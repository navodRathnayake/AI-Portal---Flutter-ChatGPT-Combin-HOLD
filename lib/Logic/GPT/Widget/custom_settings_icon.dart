library custom_settings_icon;

import 'package:flutter/material.dart';

class CustomSettingsIcon extends StatefulWidget {
  const CustomSettingsIcon({super.key});

  @override
  State<CustomSettingsIcon> createState() => _CustomSettingsIconState();
}

class _CustomSettingsIconState extends State<CustomSettingsIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: Image.asset(
        'Assets/Icons/filter.png',
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
}
