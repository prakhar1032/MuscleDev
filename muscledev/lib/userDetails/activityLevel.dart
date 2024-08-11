import 'package:flutter/material.dart';
import 'package:muscledev/mainpage.dart';
import 'package:muscledev/styling/colors.dart';
import 'package:wheel_slider/wheel_slider.dart';

class UserActivityLevel extends StatefulWidget {
  const UserActivityLevel({super.key});

  @override
  State<UserActivityLevel> createState() => _UserActivityLevelState();
}

class _UserActivityLevelState extends State<UserActivityLevel> {
  int _nCurrentValue = 0;

  final List<String> labels = [
    'Rookie',
    'Beginner',
    'Intermediate',
    'Advance',
    'True Beast',
  ];

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
                  textAlign: TextAlign.center,
                  "Your regular physical\nactivity level?",
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
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Lines above and below the WheelSlider
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 2,
                              width: 150,
                              color: CustomColors.greenColor,
                            ),
                            SizedBox(
                              height:
                                  80, // Adjust this height to move lines closer or farther apart
                            ),
                            Container(
                              height: 2,
                              width: 150,
                              color: CustomColors.greenColor,
                            ),
                          ],
                        ),
                        // Centering the WheelSlider within the Stack
                        WheelSlider.customWidget(
                          verticalListWidth:
                              MediaQuery.sizeOf(context).width * 1.0,
                          listWidth: MediaQuery.sizeOf(context).width * 1.0,
                          totalCount: labels.length,
                          perspective: 0.01,
                          squeeze: 0.8,
                          initValue: _nCurrentValue,
                          horizontal: false,
                          isInfinite: false,
                          children: List.generate(
                            labels.length,
                            (index) => Center(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width *
                                      1.0, // Adjust width as needed
                                  child: Text(
                                    labels[index], // Display the text label
                                    textAlign: TextAlign
                                        .center, // Center the text within the container
                                    style: TextStyle(
                                      fontFamily: 'Fontspring',
                                      fontSize: 20.0,
                                      color: _nCurrentValue == index
                                          ? CustomColors.greenColor
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onValueChanged: (val) {
                            setState(() {
                              _nCurrentValue = val;
                            });
                          },
                          hapticFeedbackType: HapticFeedbackType.vibrate,
                          showPointer: false,
                          itemSize: 80,
                        ),
                      ],
                    ),
                  )
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
                              builder: (context) => MainPage(),
                            ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start",
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
