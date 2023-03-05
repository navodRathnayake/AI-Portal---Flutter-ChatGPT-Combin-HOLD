library gpt_activity;

import 'package:flutter/material.dart';
import '../Widget/custom_settings_icon.dart';
import '../Widget/popup_settings_menu.dart';

class GPTActivity extends StatelessWidget {
  final _controller = TextEditingController();
  GPTActivity({super.key});
  static Route<void> route() => MaterialPageRoute(
        builder: (_) => GPTActivity(),
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
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onInverseSurface),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'How Can I Help You',
                          ),
                          cursorWidth: 10,
                          minLines: 1,
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          onSubmitted: (value) {},
                          onChanged: (value) {},
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            height: 30,
                            child: Image.asset(
                              'Assets/Icons/clean.png',
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            width: 30,
                            child: Image.asset(
                              'Assets/Icons/mic.png',
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
