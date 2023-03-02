library app;

import 'package:chatgpt/Logic/Route/route_bloc.dart';
import 'package:chatgpt/Splash/Repository/splash_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Logic/GPT/view/gpt_activity.dart';
import 'Logic/bloc/settings_bloc.dart';
import 'Routes/app_routes.dart';
import 'Splash/View/splash_activity.dart';

class App extends StatelessWidget {
  final SplashRepository routeRepository;
  const App({super.key, required this.routeRepository});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RouteBloc>(
            create: (_) => RouteBloc(repository: routeRepository)),
        BlocProvider(create: (_) => SettingsBloc())
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Chat GPT',
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(
            useMaterial3: true,
          ),
          darkTheme: ThemeData.dark(),
          themeMode: (state.themeModeStatus == AppThemeMode.lightMode)
              ? ThemeMode.light
              : ThemeMode.dark,
          // builder: (context, child) {
          //   return BlocListener<RouteBloc, RouteState>(
          //     listener: (context, state) {
          //       if (state.status == RouteStatus.initial) {
          //         _navigator.pushAndRemoveUntil<void>(
          //             SplashActivity.route(), (route) => false);
          //       }
          //       if (state.status == RouteStatus.engage) {
          //         _navigator.pushAndRemoveUntil<void>(
          //             GPTActivity.route(), (route) => false);
          //       }
          //     },
          //     child: child,
          //   );
          // },
          // onGenerateRoute: AppRoutes.onGenerateRoute,
          home: const GPTActivity(),
        );
      },
    );
  }
}
