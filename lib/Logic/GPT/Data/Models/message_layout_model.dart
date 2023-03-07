library message_layout_model;

import 'package:chatgpt/Logic/GPT/Bloc/gpt_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum MessageSource { user, app }

@immutable
class MessageLayoutModel extends Equatable {
  final MessageSource source;
  final String content;
  final bool? feedback;

  const MessageLayoutModel(
      {required this.source, required this.content, required this.feedback});

  MessageLayoutModel copyWith({
    MessageSource? source,
    String? content,
    bool? feedback,
  }) {
    return MessageLayoutModel(
      source: source ?? this.source,
      content: content ?? this.content,
      feedback: feedback,
    );
  }

  Map<String, dynamic> toMap({required MessageLayoutModel obj}) {
    return {
      'source': obj.source,
      'content': obj.content,
      'feedback': obj.feedback
    };
  }

  factory MessageLayoutModel.fromMap({required Map<String, dynamic> json}) {
    return MessageLayoutModel(
        source: json['source'],
        content: json['content'],
        feedback: json['feedback']);
  }

  @override
  List<Object?> get props => [source, content, feedback];
}
