import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:muscledev/styling/colors.dart';
import 'package:muscledev/userDetails/weight.dart';
import 'package:wheel_slider/wheel_slider.dart';

class UserAge extends StatefulWidget {
  const UserAge({super.key});

  @override
  State<UserAge> createState() => _UserAgeState();
}

class _UserAgeState extends State<UserAge> {
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
                  "How old are you ?",
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
                  Stack(
                    alignment: Alignment.center,
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
                                  50), // Adjust this height to move lines closer or farther apart
                          Container(
                            height: 2,
                            width: 100,
                            color: CustomColors.greenColor,
                          ),
                        ],
                      ),
                      WheelSlider.number(
                        isVibrate: true,
                        squeeze: 0.6,
                        horizontal: false,
                        perspective: 0.01,
                        totalCount: 99,
                        initValue: 0,
                        selectedNumberStyle: TextStyle(
                          fontSize: 30.0,
                          color: CustomColors.greenColor,
                        ),
                        unSelectedNumberStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                        currentIndex: _nCurrentValue,
                        onValueChanged: (val) {
                          setState(() {
                            _nCurrentValue = val;
                          });
                        },
                        hapticFeedbackType: HapticFeedbackType.heavyImpact,
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
                              builder: (context) => UserWeight(),
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
