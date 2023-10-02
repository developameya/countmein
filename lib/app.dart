import 'package:beamer/beamer.dart';
import 'package:count_me_in/features/core/common/beamer_delegate.dart';
import 'package:count_me_in/features/core/common/constants.dart';
import 'package:flutter/material.dart';

///Application to be presented.
///
///Provides theme and routing for the app.
///
class App extends StatelessWidget {
  ///Creates the application
  ///
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appTitle,
      theme: ThemeData.dark(useMaterial3: true),
      routerDelegate: beamerDelgate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: beamerDelgate),
    );
  }
}
