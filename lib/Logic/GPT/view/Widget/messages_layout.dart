library messages_layout;

import 'package:chatgpt/Logic/GPT/view/Widget/src/app_message_content.dart';
import 'package:chatgpt/Logic/GPT/view/Widget/src/app_message_feedbacks.dart';
import 'package:flutter/material.dart';

import '../../Data/Models/message_layout_model.dart';
import 'src/app_message_source_profile.dart';

class MessagesLayout extends StatelessWidget {
  final Color backgroundColor;
  final MessageSource source;
  final String content;
  final bool? feedback;

  const MessagesLayout({
    super.key,
    required this.backgroundColor,
    required this.source,
    required this.content,
    required this.feedback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onInverseSurface,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppMessageSourceProfile(),
              AppMessageContent(content: content),
            ],
          ),
          const AppMessageFeedbacks(),
        ],
      ),
    );
  }
}
