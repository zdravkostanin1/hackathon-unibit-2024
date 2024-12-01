import 'package:flutter/material.dart';
import 'package:hackathon_unibit_2024/src/pages/introduction/view/introduction_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeBloom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroductionPage(),
    );
  }
}