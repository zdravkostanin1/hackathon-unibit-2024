import 'package:flutter/material.dart';
import 'package:hackathon_unibit_2024/src/pages/home/view/home_page.dart';
import 'package:page_transition/page_transition.dart';

class CongratulationsOnYourJourneyPage extends StatefulWidget {
  final bool isInPregnancy;
  const CongratulationsOnYourJourneyPage({super.key, required this.isInPregnancy});

  @override
  State<CongratulationsOnYourJourneyPage> createState() => _CongratulationsOnYourJourneyPageState();
}

class _CongratulationsOnYourJourneyPageState extends State<CongratulationsOnYourJourneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            child: Image.asset('assets/images/smiling.png'),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Congratulations on your new journey!',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 5),
          const Center(
            child: Text(
              'You are going to be an amazing mom!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: NavBar(isInPregnancy: widget.isInPregnancy,),
                    duration: const Duration(milliseconds: 400),
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
                'CONTINUE',
                style: TextStyle(
                  fontSize: 16, // Font size for the text
                  fontWeight: FontWeight.bold, // Text style
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}