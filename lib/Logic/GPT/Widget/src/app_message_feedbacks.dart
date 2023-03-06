library app_message_feedbacks;

import 'package:flutter/material.dart';

class AppMessageFeedbacks extends StatelessWidget {
  const AppMessageFeedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(
            Icons.thumb_up_alt_outlined,
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(Icons.thumb_down_off_alt_outlined)
        ],
      ),
    );
  }
}
