import 'package:flutter/material.dart';
import 'package:muscledev/utils/colors.dart';
import 'package:muscledev/pages/userDetails/goal.dart';
import 'package:wheel_slider/wheel_slider.dart';

class UserHeight extends StatefulWidget {
  const UserHeight({super.key});

  @override
  State<UserHeight> createState() => _UserHeightState();
}

class _UserHeightState extends State<UserHeight> {
  int _nCurrentValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.bagroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What’s your height?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Fontspring',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "This helps us create your personalized plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Fontspring',
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Ensures the entire Row is centered
                    children: [
                      Stack(
                        alignment: Alignment
                            .center, // Aligns children in the center of the Stack
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 2,
                                width: 100,
                                color: CustomColors.greenColor,
                              ),
                              SizedBox(
                                height:
                                    50, // Adjust this height to move lines closer or farther apart
                              ),
                              Container(
                                height: 2,
                                width: 100,
                                color: CustomColors.greenColor,
                              ),
                            ],
                          ),
                          Center(
                            // Centering the WheelSlider within the Stack
                            child: WheelSlider.number(
                              isVibrate: true,
                              squeeze: 0.6,
                              horizontal: false,
                              perspective: 0.01,
                              totalCount: 200,
                              initValue: 0,
                              selectedNumberStyle: TextStyle(
                                fontSize: 20.0,
                                color: CustomColors.greenColor,
                              ),
                              unSelectedNumberStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              currentIndex: _nCurrentValue,
                              onValueChanged: (val) {
                                setState(() {
                                  _nCurrentValue = val;
                                });
                              },
                              hapticFeedbackType:
                                  HapticFeedbackType.heavyImpact,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          color: CustomColors.greenColor,
                          fontSize: 18,
                          fontFamily: 'Fontspring',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, bottom: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: CustomColors.lightblack,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: CustomColors.greenColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserGoal(),
                            ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Fontspring',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.transparent,
                        disabledForegroundColor:
                            Colors.transparent.withOpacity(0.38),
                        disabledBackgroundColor:
                            Colors.transparent.withOpacity(0.12),
                        shadowColor: Colors.transparent,
                        //make color or elevated button transparent
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
