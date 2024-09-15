import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:muscledev/pages/onboarding/onboarding_screen.dart';
import 'package:muscledev/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:
          "AIzaSyD5Qs6DE5EiOG3GJl8gVFAwe7nT-ktqLHk", // paste your api key here
      appId:
          "1:70165939027:android:f1dff98c78104b9b3697a6", //paste your app id here
      messagingSenderId: "70165939027", //paste your messagingSenderId here
      projectId: "devmuscle-7594e", //paste your project id here
    ),
  );
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
              builder: (context) => OnboardingPage(),
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
