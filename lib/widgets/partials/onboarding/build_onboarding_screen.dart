import 'package:flutter/material.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';

class BuildOnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const BuildOnboardingPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            addVerticalSpace(20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF180E12),
                fontSize: 30,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
            addVerticalSpace(20),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF180E12),
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
