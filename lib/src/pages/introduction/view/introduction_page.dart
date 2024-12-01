import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:hackathon_unibit_2024/src/pages/beginning_question/view/beginning_question_page.dart';
import 'package:hackathon_unibit_2024/src/utils/constants.dart';
import 'package:page_transition/page_transition.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: introPages,
      skip: const Text(
        "SKIP",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      showSkipButton: true,
      next: const Text(
        "NEXT",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      showNextButton: true,
      done: const Text(
        "DONE",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      // TODO: Implement
      onDone: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: const BeginningQuestionPage(),
            duration: const Duration(milliseconds: 300),
          ),
        );
      },
      skipStyle: TextButton.styleFrom(foregroundColor: Colors.black),
      doneStyle: TextButton.styleFrom(foregroundColor: Colors.black),
      nextStyle: TextButton.styleFrom(foregroundColor: Colors.black),
    );
  }
}