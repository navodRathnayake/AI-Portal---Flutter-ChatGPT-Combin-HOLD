library gpt_activity;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widget/custom_settings_icon.dart';
import '../Widget/popup_settings_menu.dart';

class GPTActivity extends StatelessWidget {
  const GPTActivity({super.key});
  static Route<void> route() => MaterialPageRoute(
        builder: (_) => const GPTActivity(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset('Assets/Icons/brain.png',
                color: Theme.of(context).colorScheme.onBackground),
          ),
          title: Text('AI PORTAL',
              style: Theme.of(context).textTheme.headlineMedium),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: PopUpSettingsMenu(icon: CustomSettingsIcon()),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 1000,
                    itemBuilder: (context, index) {
                      return Text('text here');
                    },
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(child: TextField()),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.record_voice_over),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
