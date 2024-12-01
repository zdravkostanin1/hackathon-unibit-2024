import 'package:flutter/material.dart';
import 'package:hackathon_unibit_2024/src/pages/congratulations/view/congratulations_page.dart';
import 'package:hackathon_unibit_2024/src/pages/details/view/details_page.dart';
import 'package:page_transition/page_transition.dart';

class BeginningQuestionPage extends StatelessWidget {
  const BeginningQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Let\'s start by this. Which of these suits you best?',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  const bool isPregnant = true;

                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const DetailsPage(isInPregnancy: isPregnant),
                      duration: const Duration(milliseconds: 300),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  // Padding
                  backgroundColor: const Color(0xffC499F3),
                  // Button background color
                  foregroundColor: Colors.white,
                  // Text color
                  elevation: 4, // Shadow for button
                ),
                child: const Text(
                  'I AM PREGNANT',
                  style: TextStyle(
                    fontSize: 16, // Font size for the text
                    fontWeight: FontWeight.bold, // Text style
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  const bool isPregnant = false;

                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const CongratulationsOnYourJourneyPage(isInPregnancy: isPregnant),
                      duration: const Duration(milliseconds: 300),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  // Padding
                  backgroundColor: const Color(0xff5755FE),
                  // Button background color
                  foregroundColor: Colors.white,
                  // Text color
                  elevation: 4, // Shadow for button
                ),
                child: const Text(
                  'I GAVE BIRTH',
                  style: TextStyle(
                    fontSize: 16, // Font size for the text
                    fontWeight: FontWeight.bold, // Text style
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}