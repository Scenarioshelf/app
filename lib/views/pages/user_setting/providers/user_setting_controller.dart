import 'package:flutter/foundation.dart';

import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/auth/auth_api.dart';
import 'package:scenarioshelf/repositories/auth/auth_repository.dart';
import 'package:scenarioshelf/repositories/firebase/crashlytics/crashlytics_repository.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/user_setting/providers/states/user_setting_state.dart';

part 'user_setting_controller.g.dart';

@riverpod
class UserSettingController extends _$UserSettingController {
  late final AuthAPI _authRepository;

  @override
  FutureOr<UserSettingState> build() {
    _authRepository = ref.read(authRepositoryProvider);

    return const UserSettingState();
  }

  void resolve() {
    final current = state;
    if (current is! AsyncError) {
      return;
    }

    state = AsyncValue.data(state.valueOrNull ?? const UserSettingState());
  }

  void updateName(String name) {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return;
    }

    state = AsyncValue.data(data.copyWith(name: name));
  }

  Future<void> pickAvatar() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return;
    }

    try {
      final userId = ref.read(currentUserControllerProvider)?.id ?? ref.read(provisionallyRegisteredUserControllerProvider)?.id;
      if (userId == null) {
        throw const UserException(
          message: 'Not Found User ID',
          display: 'ユーザ情報の読み取りに失敗しました',
        );
      }

      final image = await _pickImage();
      if (image == null) {
        logger.i('Canceled to Pick Image');
        state = AsyncValue.data(data);
        return;
      }

      final cropped = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      if (cropped == null) {
        logger.i('Canceled to Crop Image');
        state = AsyncValue.data(data);
        return;
      }

      final unit8ListCropped = await cropped.readAsBytes();
      final decoded = img.decodeJpg(unit8ListCropped);
      if (decoded == null) {
        throw const UserException(
          message: 'Failed to Decode Image',
          display: '選択された画像の読み込みに失敗しました',
        );
      }

      final resized = img.copyResize(
        decoded,
        width: 512,
        height: 512,
      );

      state = AsyncValue.data(data.copyWith(avatar: img.encodeJpg(resized)));
    } on UserException catch (error, stack) {
      logger.e(
        'Failed to Execute UserSettingController.pickAvatar',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        error,
        stack,
      );
    } on FormatException catch (error, stack) {
      logger.e(
        'Failed to Execute UserSettingController.pickAvatar',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        const UserException(
          message: 'Failed to Access Album',
          display: 'アルバムへのアクセスが拒否されました',
        ),
        stack,
      );
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute UserSettingController.pickAvatar',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        UserException(
          message: error.toString(),
          display: '原因不明のエラーが発生しました',
        ),
        stack,
      );
    }
  }

  Future<XFile?> _pickImage() async {
    final picker = ImagePicker();
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      final lostData = await picker.retrieveLostData();
      if (!lostData.isEmpty && lostData.file != null) {
        return lostData.file;
      }
    }

    return picker.pickImage(source: ImageSource.gallery);
  }

  Future<void> setup() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return;
    }

    if (data.name.isEmpty) {
      const error = UserException(
        message: 'Empty Name',
        display: 'ユーザ名が入力されていません',
      );
      final stack = StackTrace.current;

      logger.e(
        'Failed to Execute UserSettingController.setup',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        error,
        stack,
      );

      return;
    }

    await updateSettings();
  }

  Future<void> updateSettings() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return;
    }

    if (data.name.isEmpty && data.avatar == null) {
      return;
    }

    state = const AsyncValue.loading();

    try {
      final user = await _authRepository.update(
        username: data.name,
        avatar: data.avatar,
      );

      ref.read(currentUserControllerProvider.notifier).update(user);

      state = AsyncValue.data(data);
    } on UserException catch (error, stack) {
      logger.e(
        'Failed to Execute UserSettingController.setup',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        error,
        stack,
      );
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute UserSettingController.setup',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        UserException(
          message: error.toString(),
          display: '原因不明のエラーが発生しました',
        ),
        stack,
      );
    }
  }
}
