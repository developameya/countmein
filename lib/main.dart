import 'package:count_me_in/app.dart';
import 'package:count_me_in/common/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependancies();
  runApp(const App());
}
