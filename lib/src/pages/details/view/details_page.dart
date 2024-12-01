import 'package:flutter/material.dart';
import 'package:hackathon_unibit_2024/src/pages/thanks_details/view/thanks_details_page.dart';
import 'package:page_transition/page_transition.dart';

class DetailsPage extends StatelessWidget {
  final bool isInPregnancy;
  const DetailsPage({super.key, required this.isInPregnancy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "To display specific data to you, we need to know more about you. Please answer the following questions.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              // Age field
              const Text(
                "1. What is your age?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your age",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Due date field
              const Text(
                "2. When is your due date?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: "Enter your due date (MM/DD/YYYY)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              // const SizedBox(height: 20),
              // const Text(
              //   "3. What is your height?",
              //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              // ),
              // const SizedBox(height: 8),
              // TextField(
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //     hintText: "Enter your height in cm",
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 20),
              // const Text(
              //   "4. What is your weight?",
              //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              // ),
              // const SizedBox(height: 8),
              // TextField(
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //     hintText: "Enter your weight in kg",
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              const Text(
                "5. Do you have any significant medical history (e.g., diabetes, hypertension)?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Describe your medical history",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    final bool isPregnant = isInPregnancy;
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: ThanksDetailsPage(isInPregnancy: isPregnant),
                        duration: const Duration(milliseconds: 300),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    backgroundColor: const Color(0xff5755FE),
                    foregroundColor: Colors.white,
                    elevation: 4,
                  ),
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}