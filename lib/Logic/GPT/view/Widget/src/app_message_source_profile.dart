library app_message_source_profile;

import 'package:flutter/material.dart';

class AppMessageSourceProfile extends StatelessWidget {
  const AppMessageSourceProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      color: Colors.teal,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(
          'Assets/Icons/brain.png',
          color: Colors.white,
        ),
      ),
    );
  }
}
