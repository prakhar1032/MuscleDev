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
            Expanded(
                child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.white,
                    indicator: ShapeDecoration(
                      color: CustomColors.greenColor,
                      shape: StadiumBorder(),
                    ),
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Tab(
                          text: 'Drivers',
                        ),
                      ),
                      Tab(
                        text: 'Vehicles',
                      ),
                      Tab(
                        text: 'Vehicles',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      Builder(
                        builder: (context) {
                          return Container(
                            child: Text("exercise"),
                          );
                        },
                      ),
                      Builder(
                        builder: (context) {
                          return Container(
                            child: Text("exercise"),
                          );
                        },
                      ),
                      Builder(
                        builder: (context) {
                          return Container(
                            child: Text("exercise"),
                          );
                        },
                      )
                    ],
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
