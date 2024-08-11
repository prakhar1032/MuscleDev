import 'package:flutter/material.dart';
import 'package:muscledev/styling/colors.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void onOptionSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bagroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Hello Prakhar , ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Fontspring',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Good Morning",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontFamily: 'OpenSans',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today Workout Plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
                Text(
                  "Mon 26 Apr",
                  style: TextStyle(
                    color: CustomColors.greenColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 160,
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        "assets/images/homepage2.png",
                        fit: BoxFit.fill,
                        height: 160,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Workout Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: CustomColors.greenColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => onOptionSelected(0),
                    child: Container(
                      height: 36,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.only(left: 16, right: 8),
                      decoration: selectedIndex == 0
                          ? SelectionDecorations.getSelectedDecoration()
                          : SelectionDecorations.getNonSelectedDecoration(),
                      child: Center(
                        child: Text(
                          'Beginner',
                          style: selectedIndex == 0
                              ? TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => onOptionSelected(1),
                    child: Container(
                      height: 36,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.only(right: 8),
                      decoration: selectedIndex == 1
                          ? SelectionDecorations.getSelectedDecoration()
                          : SelectionDecorations.getNonSelectedDecoration(),
                      child: Center(
                        child: Text(
                          'Intermediate',
                          style: selectedIndex == 1
                              ? TextStyle(
                                  color: CustomColors.lightblack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => onOptionSelected(2),
                    child: Container(
                      height: 36,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.only(right: 8),
                      decoration: selectedIndex == 2
                          ? SelectionDecorations.getSelectedDecoration()
                          : SelectionDecorations.getNonSelectedDecoration(),
                      child: Center(
                        child: Text(
                          'Advance',
                          style: selectedIndex == 2
                              ? TextStyle(
                                  color: CustomColors.lightblack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class SelectionDecorations {
  static BoxDecoration getSelectedDecoration() {
    return BoxDecoration(
      color: CustomColors.greenColor,
      borderRadius: BorderRadius.circular(18),
    );
  }

  static BoxDecoration getNonSelectedDecoration() {
    return BoxDecoration(
      color: CustomColors.lightblack,
      borderRadius: BorderRadius.circular(18),
    );
  }
}
