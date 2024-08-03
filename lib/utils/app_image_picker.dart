import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scenarioshelf/utils/exceptions/unexpected_type_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';

class AppImagePicker {
  Future<Uint8List?> pickImage({
    Size? cropSize,
  }) async {
    final image = await _singlePickFromGallery();
    if (image == null) {
      logger.i('Canceled to Pick Image');
      return null;
    }

    if (cropSize == null) {
      return image.readAsBytes();
    } else {
      return _cropImage(
        image: image,
        size: cropSize,
      );
    }
  }

  Future<XFile?> _singlePickFromGallery() async {
    final picker = ImagePicker();
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      final lostData = await picker.retrieveLostData();
      if (!lostData.isEmpty && lostData.file != null) {
        return lostData.file;
      }
    }

    return picker.pickImage(source: ImageSource.gallery);
  }

  Future<Uint8List?> _cropImage({
    required XFile image,
    required Size size,
  }) async {
    final cropped = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatio: CropAspectRatio(
        ratioX: size.width,
        ratioY: size.height,
      ),
    );
    if (cropped == null) {
      logger.i('Canceled to Crop Image');
      return null;
    }

    final unit8ListCropped = await cropped.readAsBytes();
    final decoded = img.decodeJpg(unit8ListCropped);
    if (decoded == null) {
      throw const UnexpectedTypeException(
        message: 'Failed to Decode Image',
        display: '選択された画像の読み込みに失敗しました',
      );
    }

    final resized = img.copyResize(
      decoded,
      width: 512,
      height: 512,
    );

    return img.encodeJpg(resized);
  }
}
