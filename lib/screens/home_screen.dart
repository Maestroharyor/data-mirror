import 'package:data_monitor/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true, // Center the title
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
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Navigate to the Home screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Stats'),
              onTap: () {
                // Navigate to the Stats screen
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
      body: Center(
        child: const Text(
          'Home Screen Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
