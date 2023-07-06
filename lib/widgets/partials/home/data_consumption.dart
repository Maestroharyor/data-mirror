import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';
import 'package:flutter/material.dart';

class DataConsumption extends StatelessWidget {
  const DataConsumption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Data Consumption Breakdown',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF858484),
            fontSize: 14,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
            letterSpacing: 0.24,
          ),
        ),
        addVerticalSpace(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_upward),
                Column(
                  children: [
                    Text(
                      'Upload',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF989898),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.24,
                      ),
                    ),
                    Text(
                      '60 GB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF130D26),
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.40,
                      ),
                    )
                  ],
                )
              ],
            ),
            addHorizontalSpace(20),
            Container(
              width: 1,
              height: 50,
              color: Colors.black.withOpacity(.4),
            ),
            addHorizontalSpace(15),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_downward),
                Column(
                  children: [
                    Text(
                      'Download',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF989898),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.24,
                      ),
                    ),
                    Text(
                      '60 GB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF130D26),
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.40,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
