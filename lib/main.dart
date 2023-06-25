import 'package:data_monitor/screens/home_screen.dart';
import 'package:data_monitor/screens/onboarding_screen.dart';
import 'package:data_monitor/screens/stats_screen.dart';
import 'package:data_monitor/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool("showHome") ?? false;
  runApp(MyApp(showHome: showHome ?? false));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  final Map<String, WidgetBuilder> routes = {
    '/onboarding': (context) => const OnboardingScreen(),
    '/': (context) => const HomeScreen(),
    '/stats': (context) => const StatsScreen(),
    // '/internet_speed': (context) => InternetSpeedScreen(),
    // '/alerts': (context) => AlertsScreen(),
    // '/settings': (context) => SettingsScreen(),
    // '/about': (context) => AboutScreen(),
    // '/help_support': (context) => HelpSupportScreen(),
  };

  MyApp({Key? key, required this.showHome}) : super(key: key);

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
      routes: routes,
      initialRoute: showHome ? '/onboarding' : '/',
      // home: showHome ? HomeScreen() : OnboardingScreen(),
    );
  }
}
