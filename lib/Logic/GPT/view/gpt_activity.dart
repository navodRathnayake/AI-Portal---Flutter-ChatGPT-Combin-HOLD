library gpt_activity;

import 'package:flutter/material.dart';

class GPTActivity extends StatelessWidget {
  const GPTActivity({super.key});
  static Route<void> route() => MaterialPageRoute(
        builder: (_) => const GPTActivity(),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
