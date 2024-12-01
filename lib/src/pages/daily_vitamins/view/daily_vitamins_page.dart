import 'package:flutter/material.dart';

class DailyVitaminsPage extends StatelessWidget {
  const DailyVitaminsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VITAMINS',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Today you need to take vitamins:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                RoundedTextContainer(text: 'Folic Acid'),
                SizedBox(width: 20),
                RoundedTextContainer(text: 'Iron'),
                SizedBox(width: 20),
                RoundedTextContainer(text: 'Calcium'),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'FAQs',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ExpansionTile(
                    title: Text('Why is folic acid important during pregnancy?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Folic acid helps prevent neural tube defects, which are serious abnormalities of the brain and spinal cord.',
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('How much iron should pregnant women take daily?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Pregnant women should take around 27 mg of iron daily to support increased blood volume and prevent anemia.',
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Why is calcium important during pregnancy?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Calcium is crucial for the development of your baby’s bones and teeth and to maintain the mother’s bone health.',
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('What vitamins are essential after pregnancy?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'After pregnancy, it’s essential to continue taking calcium, vitamin D, and iron to aid recovery and breastfeeding.',
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Can I take multivitamins while breastfeeding?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Yes, you can take multivitamins, but ensure they are suitable for breastfeeding. Consult your doctor for recommendations.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedTextContainer extends StatelessWidget {
  final String text;

  const RoundedTextContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
