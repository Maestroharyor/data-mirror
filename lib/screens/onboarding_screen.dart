import 'package:data_mirror/screens/home_screen.dart';
import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';
import 'package:data_mirror/widgets/partials/onboarding/build_onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(bottom: 130),
            child: PageView(
              controller: controller,
              onPageChanged: (value) => setState(() {
                isLastPage = value == 2;
              }),
              children: const [
                BuildOnboardingPage(
                    imagePath: "assets/images/onboarding_1.png",
                    title: "See Which Apps Consume Your Data",
                    subtitle:
                        "Keep track of how much data each app on your phone is using, adjust your usage accordingly and avoid going over your data limit."),
                BuildOnboardingPage(
                    imagePath: "assets/images/onboarding_2.png",
                    title: "Check Your Internet Speed",
                    subtitle:
                        "Easily check your internet speed from wherever you are, ensuring you're getting the speed you're paying for from your internet service provider."),
                BuildOnboardingPage(
                    imagePath: "assets/images/onboarding_3.png",
                    title: "Monitor Your Data Usage in Real-Time",
                    subtitle:
                        "Stay on top of your data usage with real-time monitoring and notifications when you reach your data limit, helping you to stay within your data plan and avoid overage fees."),
              ],
            ),
          ),
          bottomSheet: Container(
            height: 130,
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                onDotClicked: (index) => controller.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut),
                effect: const WormEffect(
                    spacing: 12.0,
                    radius: 4.0,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: ThemeConstants.grey,
                    activeDotColor: ThemeConstants.primaryColor),
              ),
              addVerticalSpace(30),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  color: ThemeConstants.grey,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  height: 80,
                  child: isLastPage
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () async {
                                final prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool("showHome", true);
                                // ignore: use_build_context_synchronously
                                Navigator.of(context).pushNamed("/");
                              },
                              child: Text(
                                "GET STARTED",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(horizontal: 40)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          ThemeConstants.primaryColor)),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                controller.jumpToPage(2);
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                    color: ThemeConstants.primaryColor),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                            ),
                            TextButton(
                              onPressed: () {
                                controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              },
                              child: Text(
                                "Next",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          ThemeConstants.primaryColor)),
                            )
                          ],
                        ),
                  // Other widget properties
                ),
              ),
            ]),
          )),
    );
  }
}
