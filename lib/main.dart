import 'package:data_mirror/screens/about_screen.dart';
import 'package:data_mirror/screens/alerts_screen.dart';
import 'package:data_mirror/screens/help_support_screen.dart';
import 'package:data_mirror/screens/home_screen.dart';
import 'package:data_mirror/screens/internet_speed_screen.dart';
import 'package:data_mirror/screens/onboarding_screen.dart';
import 'package:data_mirror/screens/settings_screen.dart';
import 'package:data_mirror/screens/stats_screen.dart';
import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/utils/animation/no_animation.dart';
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
    '/internet_speed': (context) => const InternetSpeedScreen(),
    '/alerts': (context) => const AlertsScreen(),
    '/settings': (context) => const SettingsScreen(),
    '/about': (context) => const AboutScreen(),
    '/help_support': (context) => const HelpSupportScreen(),
  };

  MyApp({Key? key, required this.showHome}) : super(key: key);

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(
      //     builder: routes[settings.name]!,
      //     settings: settings,
      //   );
      case '/onboarding':
        return MaterialPageRoute(
          builder: routes[settings.name]!,
          settings: settings,
        );
      case '/':
      case '/stats':
      case '/internet_speed':
      case '/alerts':
      case '/settings':
      case '/about':
      case '/help_support':
        return NoAnimationPageRoute(
          builder: routes[settings.name]!,
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route not found.'),
            ),
          ),
        );
    }
  }

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
      onGenerateRoute: generateRoute,
      initialRoute: showHome ? '/onboarding' : '/',
      // home: showHome ? HomeScreen() : OnboardingScreen(),
    );
  }
}
