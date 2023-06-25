import 'package:data_monitor/screens/home_screen.dart';
import 'package:data_monitor/screens/onboarding_screen.dart';
import 'package:data_monitor/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool("showHome") ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ThemeConstants.primaryColor,
        hoverColor: ThemeConstants.hoverColor,
        useMaterial3: true,
        fontFamily: 'Raleway',
      ),
      home: showHome ? HomeScreen() : OnboardingScreen(),
    );
  }
}
