import 'package:data_monitor/screens/home_screen.dart';
import 'package:data_monitor/screens/stats_screen.dart';
import 'package:data_monitor/theme/theme_constants.dart';
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
    final currentRoute = ModalRoute.of(context)?.settings.name;
    print(currentRoute);
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Data Mirror',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
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
            Container(
              height: 50, // Adjust the height as needed
              color: Colors.grey, // Set the background color
              child: const Center(
                child: Text(
                  'Footer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
