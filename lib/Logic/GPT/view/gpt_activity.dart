library gpt_activity;

import 'package:flutter/material.dart';
import '../Widget/popup_settings_menu.dart';

class GPTActivity extends StatelessWidget {
  const GPTActivity({super.key});
  static Route<void> route() => MaterialPageRoute(
        builder: (_) => const GPTActivity(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                PopUpSettingsMenu(
                  icon: Icon(Icons.settings),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
