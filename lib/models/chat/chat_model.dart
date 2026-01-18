import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String name,
    required String currentMessage,
    required String time,
    @Default(false) bool isGroup,
  }) = _ChatModel;
}

extension ChatMOdelExtension on ChatModel {
  IconData get icon => isGroup ? Icons.groups_2 : Icons.person_2;
}
