import 'package:flutter/material.dart';
import 'package:muscledev/home/home_page.dart';
import 'package:muscledev/login/login.dart';
import 'package:muscledev/navBar.dart';
import 'package:muscledev/onboarding/onboarding_screen.dart';
import 'package:muscledev/styling/colors.dart';
import 'package:muscledev/userDetails/gender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    moveToAppropriateSceen();
    super.initState();
  }

  Future<void> moveToAppropriateSceen() async {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserGender(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.bagroundColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/splashdumbell.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                'DEV',
                style: TextStyle(
                    color: CustomColors.greenColor,
                    fontSize: 50,
                    fontFamily: 'Fontspring',
                    fontWeight: FontWeight.w900),
              ),
              Text(
                'MUSCLES',
                style: TextStyle(
                    color: CustomColors.greenColor,
                    fontSize: 40,
                    fontFamily: 'Fontspring',
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ),
    );
  }
}
