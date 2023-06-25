import 'package:flutter/material.dart';
import 'package:data_monitor/widgets/elements/helper_widgets.dart';

class onboarding_screen_3 extends StatelessWidget {
  const onboarding_screen_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/images/onboarding_3.png'),
            addVerticalSpace(20),
            Text(
              'Monitor Your Data Usage in Real-Time',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF180E12),
                fontSize: 30,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
            addVerticalSpace(20),
            Text(
              "Stay on top of your data usage with real-time monitoring and notifications when you reach your data limit, helping you to stay within your data plan and avoid overage fees.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF180E12),
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
    );
  }
}
