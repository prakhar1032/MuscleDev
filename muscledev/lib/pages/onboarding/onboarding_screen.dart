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
            'Welcome to DevMuscle',
            style: TextStyle(
                fontSize: 24,
                letterSpacing: 1,
                color: Colors.white,
                fontFamily: 'Fontspring',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15), // Add some spacing between the text and subtext
          Text(
            'Achieve your fitness goals with personalized workout plans, track your progress, and stay motivated on your journey to a healthier you.',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 0.5,
                color: Colors.white,
                fontFamily: 'Fontspring',
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
            'You can count on us.',
            style: TextStyle(
                fontSize: 24,
                letterSpacing: 0.5,
                color: Color(0xff545454),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15), // Add some spacing between the text and subtext
          Text(
            'Top - Tier Shipping and Delivery\nServices across NER',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 0.5,
                color: Color(0xff939393),
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
            'Send anything across NER',
            style: TextStyle(
                fontSize: 24,
                letterSpacing: 0.5,
                color: Color(0xff545454),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15), // Add some spacing between the text and subtext
          Text(
            'Delivery solutions made easier,\nfaster and safer.',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 0.5,
                color: Color(0xff939393),
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
