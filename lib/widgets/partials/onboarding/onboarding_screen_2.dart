import 'package:flutter/material.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';

class onboarding_screen_2 extends StatelessWidget {
  const onboarding_screen_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/images/onboarding_2.png'),
            addVerticalSpace(20),
            Text(
              'Check Your Internet Speed',
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
              "Easily check your internet speed from wherever you are, ensuring you're getting the speed you're paying for from your internet service provider.",
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
