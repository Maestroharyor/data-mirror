import 'package:data_mirror/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class MainScreenLayout extends StatelessWidget {
  final Widget body;
  final String pageTitle;

  const MainScreenLayout({
    super.key,
    required this.body,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    // final currentRoute = ModalRoute.of(context)?.settings.name;

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              margin: const EdgeInsets.all(0), // Add margin for padding
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), // Apply border radius
                border: Border.all(
                  color: ThemeConstants.grey, // Set border color
                  width: 1, // Set border width
                ),
              ),
              child: IconButton(
                icon: const Icon(
                    Icons.notifications), // Use notification bell icon
                onPressed: () {
                  // Perform action when the icon button is pressed
                },
                padding: const EdgeInsets.all(0), // Add padding
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 150,
                width: double.infinity,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: ThemeConstants.primaryColor,
                  ),
                  child: Text(
                    'Data Mirror',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.home),
                          title: const Text('Home'),
                          onTap: () {
                            // Navigate to the Home screen
                            if (ModalRoute.of(context)?.settings.name != '/') {
                              Navigator.of(context).pushNamed("/");
                            }
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.bar_chart),
                          title: const Text('Stats'),
                          onTap: () {
                            // Navigate to the Stats screen
                            if (ModalRoute.of(context)?.settings.name !=
                                '/stats') {
                              Navigator.of(context).pushNamed("/stats");
                            }
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.network_check),
                          title: const Text('Internet Speed'),
                          onTap: () {
                            // Navigate to the Internet Speed screen
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.notifications),
                          title: const Text('Alerts'),
                          onTap: () {
                            // Navigate to the Alerts screen
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.settings),
                          title: const Text('Settings'),
                          onTap: () {
                            // Navigate to the Settings screen
                          },
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.info),
                            title: const Text('About'),
                            onTap: () {
                              // Navigate to the About screen
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.help),
                            title: const Text('Help and Support'),
                            onTap: () {
                              // Navigate to the Help and Support screen
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 90,
        child: Container(
          // color: ThemeConstants.hoverColor,
          padding: const EdgeInsetsDirectional.only(top: 5),
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
                              color:
                                  ModalRoute.of(context)?.settings.name == '/'
                                      ? ThemeConstants.primaryColor
                                      : ThemeConstants.inactiveBottomBarColor),
                          Text('Home',
                              style: TextStyle(
                                  color: ModalRoute.of(context)
                                              ?.settings
                                              .name ==
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
                                  color: ModalRoute.of(context)
                                              ?.settings
                                              .name ==
                                          '/stats'
                                      ? ThemeConstants.primaryColor
                                      : ThemeConstants.inactiveBottomBarColor)),
                        ],
                      )),
                ],
              ),
              Container(
                height: 75,
                // width: 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      ModalRoute.of(context)?.settings.name == '/internet_speed'
                          ? ThemeConstants.primaryColor
                          : ThemeConstants.inactiveBottomBarColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                child: IconButton(
                  onPressed: () {},
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
                        if (ModalRoute.of(context)?.settings.name !=
                            '/alerts') {
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
                                  color: ModalRoute.of(context)
                                              ?.settings
                                              .name ==
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
                                  color: ModalRoute.of(context)
                                              ?.settings
                                              .name ==
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
      ),
      body: body,
    );
  }
}
