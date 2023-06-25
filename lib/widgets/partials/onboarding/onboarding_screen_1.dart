import 'package:flutter/material.dart';
import 'package:data_monitor/widgets/elements/helper_widgets.dart';

class onboarding_screen_1 extends StatelessWidget {
  const onboarding_screen_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/images/onboarding_1.png'),
            addVerticalSpace(20),
            Text(
              'See Which Apps Consume Your Data',
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
              'Keep track of how much data each app on your phone is using, adjust your usage accordingly and avoid going over your data limit.',
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
