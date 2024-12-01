import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:hackathon_unibit_2024/src/pages/daily_vitamins/view/daily_vitamins_page.dart';
import 'package:hackathon_unibit_2024/src/pages/exercises/view/exercises_page.dart';
import 'package:hackathon_unibit_2024/src/pages/food_water_intake/view/food_water_intake_page.dart';
import 'package:hackathon_unibit_2024/src/pages/home/widgets/circular_icon_button.dart';
import 'package:hackathon_unibit_2024/src/pages/home/widgets/profile_widget.dart';
import 'package:hackathon_unibit_2024/src/pages/home/widgets/wave_clipper.dart';
import 'package:hackathon_unibit_2024/src/pages/meditation/view/meditation_page.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  final bool isInPregnancy;

  const HomePage({super.key, required this.isInPregnancy});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: ProfileWidget(
                        name: "Sarah Walker",
                        imageUrl:
                            "https://imgcdn.stablediffusionweb.com/2024/6/12/4d688bcf-f53b-42b6-a98d-3254619f3b58.jpg",
                      ),
                    ),
                    const SizedBox(width: 10),
                    CircularIconButton(
                      icon: Icons.drag_handle,
                      onPressed: () {
                        print("Icon button pressed");
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Card(
                  color: const Color(0xffF7F7F7),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff133E87),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'QUOTE OF THE DAY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              "Life doesn’t come with a manual; it comes with a mother.",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Unknown",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text('Today\'s must dos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.isInPregnancy
                        ? Expanded(
                            child: SizedBox(
                              height: 200,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const MeditationPage(),
                                      duration: const Duration(milliseconds: 300),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipPath(
                                      clipper: WaveClipper(),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF7F7F7),
                                              Color(0xffE0E4FF)
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 48,
                                              child: Image.asset(
                                                  'assets/images/gym.png')),
                                          const SizedBox(height: 8),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 20.0),
                                            child: Text(
                                              "Daily Meditation",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Expanded(
                            child: SizedBox(
                              height: 200,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const ExercisesPage(),
                                      duration:
                                          const Duration(milliseconds: 300),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipPath(
                                      clipper: WaveClipper(),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF7F7F7),
                                              Color(0xffE0E4FF)
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 48,
                                            child: Image.asset(
                                                'assets/images/dumbbell.png'),
                                          ),
                                          const SizedBox(height: 8),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 20.0),
                                            child: Text(
                                              "Exercises",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const DailyVitaminsPage(),
                            duration: const Duration(milliseconds: 300),
                          ),
                        );
                      },
                      child: Expanded(
                        child: SizedBox(
                          height: 200,
                          child: Card(
                            color: const Color(0xffF7F7F7),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 48,
                                      child: Image.asset(
                                          'assets/images/vitamins.png')),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Daily vitamins",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "• Folic Acid\n• Iron\n• Calcium",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    "Trackers",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Trackers Section
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const FoodWaterIntakePage(),
                        duration: const Duration(milliseconds: 300),
                      ),
                    );
                  },
                  child: Card(
                    color: const Color(0xffF7F7F7),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 50,
                                  child: Image.asset('assets/images/diet.png')),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Food & water intake",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                widget.isInPregnancy
                    ? Card(
                        color: const Color(0xffFFF6F6),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xffF8BDEB),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'EXPECTED BIRTH DATE',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF8BDEB),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '42',
                                        style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'DAYS',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffF8BDEB),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xffF7F7F7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(
                                          20), // Rounded left corners
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LucideIcons.calendar_1,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(height: 10),
                                      Center(
                                        child: Text(
                                          'Next visitation',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(
                                          20), // Rounded right corners
                                    ),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'PERIOD in ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            // Circle background color
                                            shape: BoxShape.circle,
                                          ),
                                          alignment: Alignment.center,
                                          child: const Text(
                                            '5',
                                            // Replace '5' with your dynamic days integer
                                            style: TextStyle(
                                              color: Colors.green,
                                              // Text color matching the container
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ' days',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  final bool isInPregnancy;

  const NavBar({super.key, required this.isInPregnancy});

  @override
  State<StatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onNavBarTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          HomePage(isInPregnancy: widget.isInPregnancy),
          const ExercisesPage(),
          const DailyVitaminsPage(),
          const FoodWaterIntakePage(),
          // const HomePage(isInPregnancy: false),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavBarTapped,
        type: BottomNavigationBarType.fixed,
        // Prevents shifting animation
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.house,
              size: 30,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              widget.isInPregnancy ? LucideIcons.target : LucideIcons.person_standing,
              size: 30,
              color: Colors.black,
            ),
            label: widget.isInPregnancy ? 'Meditation' : 'Exercises',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.pill_bottle,
              size: 30,
              color: Colors.black,
            ),
            label: 'Vitamins',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.carrot,
              size: 30,
              color: Colors.black,
            ),
            label: 'Food & Water',
          ),
        ],
      ),
    );
  }
}
