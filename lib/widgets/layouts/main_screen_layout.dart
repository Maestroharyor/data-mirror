import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/widgets/elements/navigation/bottom_navbar.dart';
import 'package:data_mirror/widgets/elements/navigation/sidebar_drawer.dart';
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
      drawer: const SidebarDrawer(),
      bottomNavigationBar: const BottomNavBar(),
      body: body,
    );
  }
}
