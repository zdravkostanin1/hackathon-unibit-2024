import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

final List<PageViewModel> introPages = [
  PageViewModel(
    title: "SUPPORT YOUR MENTAL WELL-BEING",
    body:
    "Manage stress, anxiety, and emotions during and after pregnancy with helpful tools and resources.",
    image: const Center(
      child: Image(
        image: AssetImage('assets/images/mental-health.png'),
        height: 175.0,
      ),
    ),
  ),
  PageViewModel(
    title: "SEAMLESS AND USER-FRIENDLY",
    body:
    "Enjoy a smooth, intuitive interface designed for every stage of your motherhood journey.",
    image: const Center(
      child: Image(
        image: AssetImage('assets/images/smartphone.png'),
        height: 175.0,
      ),
    ),
  ),
  PageViewModel(
    title: "HOLISTIC HEALTH MANAGEMENT",
    body:
    "Track health, set reminders, and access expert advice in one convenient app.",
    image: const Center(
      child: Image(
        image: AssetImage('assets/images/woman.png'),
        height: 175.0,
      ),
    ),
  ),
];