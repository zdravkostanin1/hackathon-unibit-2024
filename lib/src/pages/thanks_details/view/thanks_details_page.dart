import 'package:flutter/material.dart';
import 'package:new_flutter_app/src/pages/home/view/home_page.dart';
import 'package:page_transition/page_transition.dart';

class ThanksDetailsPage extends StatefulWidget {
  final bool isInPregnancy;

  const ThanksDetailsPage({super.key, required this.isInPregnancy});

  @override
  State<ThanksDetailsPage> createState() => _ThanksDetailsPageState();
}

class _ThanksDetailsPageState extends State<ThanksDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            child: Image.asset('assets/images/hearts.png'),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Thanks for sharing your details, we appreciate it!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 5),
          const Center(
            child: Text(
              'You can now continue to the app and enjoy the experience',
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
                    child: NavBar(isInPregnancy: widget.isInPregnancy),
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