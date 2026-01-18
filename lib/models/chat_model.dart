import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String name,
    required String icon,
    @Default(false) bool isGroup,
  }) = _ChatModel;
}
