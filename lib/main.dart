library main;

import 'package:chatgpt/Splash/Repository/splash_repository.dart';
import 'package:chatgpt/app.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App(
    routeRepository: SplashRepository(),
  ));
}
