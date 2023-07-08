import 'package:data_mirror/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Theme.of(context).bottomAppBarTheme.color,
      color: Theme.of(context).bottomAppBarTheme.color,
      height: 90,
      child: Container(
        color: Theme.of(context).bottomAppBarTheme.color,
        padding: const EdgeInsets.only(top: 5, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name != '/') {
                        Navigator.of(context).pushNamed("/");
                      }
                    },
                    child: Column(
                      children: [
                        Icon(Icons.home,
                            color: ModalRoute.of(context)?.settings.name == '/'
                                ? ThemeConstants.primaryColor
                                : ThemeConstants.inactiveBottomBarColor),
                        Text('Home',
                            style: TextStyle(
                                color: ModalRoute.of(context)?.settings.name ==
                                        '/'
                                    ? ThemeConstants.primaryColor
                                    : ThemeConstants.inactiveBottomBarColor)),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name != '/stats') {
                        Navigator.of(context).pushNamed("/stats");
                      }
                    },
                    child: Column(
                      children: [
                        Icon(Icons.bar_chart,
                            color: ModalRoute.of(context)?.settings.name ==
                                    '/stats'
                                ? ThemeConstants.primaryColor
                                : ThemeConstants.inactiveBottomBarColor),
                        Text('Stats',
                            style: TextStyle(
                                color: ModalRoute.of(context)?.settings.name ==
                                        '/stats'
                                    ? ThemeConstants.primaryColor
                                    : ThemeConstants.inactiveBottomBarColor)),
                      ],
                    )),
              ],
            ),
            Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    ModalRoute.of(context)?.settings.name == '/internet_speed'
                        ? ThemeConstants.primaryColor
                        : ThemeConstants.inactiveBottomBarColor,
                border: Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
              ),
              transform: Matrix4.translationValues(0.0, -30.0, 0.0),
              child: IconButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name !=
                      '/internet_speed') {
                    Navigator.of(context).pushNamed("/internet_speed");
                  }
                },
                icon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        transform: Matrix4.translationValues(5.0, 6.0, 0.0),
                        child: const Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(-5.0, -6.0, 0.0),
                        child: const Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name != '/alerts') {
                        Navigator.of(context).pushNamed("/alerts");
                      }
                    },
                    child: Column(
                      children: [
                        Icon(Icons.notifications,
                            color: ModalRoute.of(context)?.settings.name ==
                                    '/alerts'
                                ? ThemeConstants.primaryColor
                                : ThemeConstants.inactiveBottomBarColor),
                        Text('Alerts',
                            style: TextStyle(
                                color: ModalRoute.of(context)?.settings.name ==
                                        '/alerts'
                                    ? ThemeConstants.primaryColor
                                    : ThemeConstants.inactiveBottomBarColor)),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      if (ModalRoute.of(context)?.settings.name !=
                          '/settings') {
                        Navigator.of(context).pushNamed("/settings");
                      }
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings,
                            color: ModalRoute.of(context)?.settings.name ==
                                    '/settings'
                                ? ThemeConstants.primaryColor
                                : ThemeConstants.inactiveBottomBarColor),
                        Text('Settings',
                            style: TextStyle(
                                color: ModalRoute.of(context)?.settings.name ==
                                        '/settings'
                                    ? ThemeConstants.primaryColor
                                    : ThemeConstants.inactiveBottomBarColor)),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
