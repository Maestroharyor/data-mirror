import 'package:data_mirror/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class SidebarDrawer extends StatelessWidget {
  const SidebarDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 150,
            width: double.infinity,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: ThemeConstants.primaryColor,
              ),
              child: Row(
                children: [
                  Text(
                    'Data Mirror',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
              if (ModalRoute.of(context)?.settings.name != '/stats') {
                Navigator.of(context).pushNamed("/stats");
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.network_check),
            title: const Text('Internet Speed'),
            onTap: () {
              // Navigate to the Internet Speed screen
              if (ModalRoute.of(context)?.settings.name != '/internet_speed') {
                Navigator.of(context).pushNamed("/internet_speed");
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Alerts'),
            onTap: () {
              // Navigate to the Alerts screen
              if (ModalRoute.of(context)?.settings.name != '/alerts') {
                Navigator.of(context).pushNamed("/alerts");
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to the Settings screen
              if (ModalRoute.of(context)?.settings.name != '/settings') {
                Navigator.of(context).pushNamed("/settings");
              }
            },
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
                    if (ModalRoute.of(context)?.settings.name != '/about') {
                      Navigator.of(context).pushNamed("/about");
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text('Help and Support'),
                  onTap: () {
                    // Navigate to the Help and Support screen
                    if (ModalRoute.of(context)?.settings.name !=
                        '/help_support') {
                      Navigator.of(context).pushNamed("/help_support");
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
