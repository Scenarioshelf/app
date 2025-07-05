import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'new_memo.freezed.dart';

@freezed
abstract class NewMemo with _$NewMemo {
  factory NewMemo({
    required ID sessionId,
    required String title,
    required String content,
    bool isPublic = true,
  }) {
    return NewMemo.inserting(
      id: ID.generate(),
      sessionId: sessionId,
      title: title,
      content: content,
      isPublic: isPublic,
    );
  }

  const factory NewMemo.inserting({
    required ID id,
    required ID sessionId,
    required String title,
    required String content,
    required bool isPublic,
  }) = _NewMemoInserting;
}
