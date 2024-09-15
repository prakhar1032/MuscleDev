import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:muscledev/pages/home/home_page.dart';
import 'package:muscledev/auth/login.dart';
import 'package:muscledev/utils/colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPageIndex = 0;

  final List<PageViewModel> pages = [
    PageViewModel(
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Stick to the top
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to full width
        children: [
          Container(
            child: Image.asset(
              'assets/images/onboard1.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 20), // Add some spacing between the image and text
          Text(
            'Track Your Workouts',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 0.5,
                color: CustomColors.greenColor,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15), // Add some spacing between the text and subtext
          Text(
            'Effortlessly log workouts, track progress, and monitor calories burned—all in one place. Whether you’re a beginner or a pro, we’ve got you covered.',
            style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,
                color: Colors.white,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: PageDecoration(pageColor: CustomColors.bagroundColor),
      titleWidget: SizedBox.shrink(), // Effectively a zero-height widget
    ),
    PageViewModel(
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Stick to the top
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to full width
        children: [
          Container(
            child: Image.asset(
              'assets/images/onboard3.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 20), // Add some spacing between the image and text
          Text(
            'Personalized Workout Plans',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 0.5,
                color: CustomColors.greenColor,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15), // Add some spacing between the text and subtext
          Text(
            'Get workout recommendations based on your fitness goals. Our AI-powered suggestions ensure you’re always improving with the right exercises.',
            style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,
                color: Colors.white,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: PageDecoration(pageColor: CustomColors.bagroundColor),
      titleWidget: SizedBox.shrink(), // Effectively a zero-height widget
    ),
    PageViewModel(
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Stick to the top
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to full width
        children: [
          Container(
            child: Image.asset(
              'assets/images/onboard2.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 20), // Add some spacing between the image and text
          Text(
            'AI-Powered Video Analysis',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 0.5,
                color: CustomColors.greenColor,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15), // Add some spacing between the text and subtext
          Text(
            'Record your workouts and receive instant feedback on your form. Our AI provides real-time tips to help you achieve the best results safely.',
            style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,
                color: Colors.white,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: PageDecoration(pageColor: CustomColors.bagroundColor),
      titleWidget: SizedBox.shrink(),
      // Effectively a zero-height widget
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bagroundColor,
      body: IntroductionScreen(
        globalBackgroundColor: CustomColors.bagroundColor,
        pages: pages,
        dotsDecorator: const DotsDecorator(
          activeSize: Size(42, 12),
          size: Size(10, 10),
          color: Color.fromRGBO(189, 189, 189, 0.6),
          // activeSize: Size.square(12),
          activeColor: CustomColors.greenColor,
          // spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: StadiumBorder(),
        ),
        showSkipButton: false,
        showNextButton: true,
        done: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (r) => false,
            );
          },
          child: Container(
            width: 200,
            height: 30,
            decoration: BoxDecoration(
                color: CustomColors.lightblack,
                borderRadius: BorderRadius.circular(20)),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Begin",
                style: TextStyle(
                    fontSize: 13,
                    color: CustomColors.greenColor,
                    fontFamily: 'Fontspring',
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        onDone: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
            (r) => false,
          );
        },
        next: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (r) => false,
            );
          },
          child: Container(
            width: 400,
            height: 30,
            decoration: BoxDecoration(
                color: CustomColors.lightblack,
                borderRadius: BorderRadius.circular(20)),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Begin',
                style: TextStyle(
                    fontSize: 12,
                    color: CustomColors.greenColor,
                    fontFamily: 'Fontspring',
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
