import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:muscledev/home/home_page.dart';
import 'package:muscledev/styling/colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "ERASER",
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/images/onboard1.png",
        backgroundColor: CustomColors.bagroundColor,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/onboard2.png",
        backgroundColor: CustomColors.bagroundColor,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "RULER",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/onboard3.png",
        backgroundColor: CustomColors.bagroundColor,
      ),
    );
  }

  void onDonePress() {
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
