import 'package:flutter/material.dart';
import 'package:hackathon_unibit_2024/src/pages/exercise_details/view/exercise_details_page.dart';
import 'package:hackathon_unibit_2024/src/pages/exercises/widgets/rounded_container_widget.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'PILATES & YOGA CATALOG',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExerciseDetailsPage(
                        name: 'Basics posses for Beginners',
                        image: 'https://www.cnet.com/a/img/resize/d01cd469c6b90622f96e99b4b87749b948a84e9d/hub/2024/06/13/8f96cae3-ad3b-4543-b7ea-d75466381d2a/woman-in-childs-pose-yoga.jpg?auto=webp&fit=crop&height=1200&width=1200',
                        description: 'A few basic posses for beginners.',
                        duration: 20,
                      ),
                    ),
                  );
                },
                child: const RoundedContainerWidget(
                  imageUrl:
                      'https://www.cnet.com/a/img/resize/d01cd469c6b90622f96e99b4b87749b948a84e9d/hub/2024/06/13/8f96cae3-ad3b-4543-b7ea-d75466381d2a/woman-in-childs-pose-yoga.jpg?auto=webp&fit=crop&height=1200&width=1200',
                  title: 'Basics posses for Beginners',
                  subtitle: '20 minutes',
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExerciseDetailsPage(
                        name: '5 minute yoga',
                        image: 'https://static.nike.com/a/images/f_auto/dpr_3.0,cs_srgb/h_500,c_limit/a229acf7-2b54-47d9-8af0-2ce77b81a70e/try-these-6-yoga-poses-to-boost-strength.jpg',
                        description: 'A 5 minute easy-to-follow yoga routine.',
                        duration: 5,
                      ),
                    ),
                  );
                },
                child: const RoundedContainerWidget(
                  imageUrl:
                      'https://static.nike.com/a/images/f_auto/dpr_3.0,cs_srgb/h_500,c_limit/a229acf7-2b54-47d9-8af0-2ce77b81a70e/try-these-6-yoga-poses-to-boost-strength.jpg',
                  title: '5 minute yoga',
                  subtitle: '5 minutes',
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExerciseDetailsPage(
                        name: 'Intermediate Yoga posses',
                        image: 'https://www.shape.com/thmb/eRwJgRaiYmLPm3svqnPOPoblmUY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Yoga-For-Abs-GettyImages-1325708886-2000-9ec8e03309314a299c311248b0b6c8f3.jpg',
                        description: 'An intermediate yoga routine for more experienced practitioners.',
                        duration: 30,
                      ),
                    ),
                  );
                },
                child: const RoundedContainerWidget(
                  imageUrl:
                      'https://www.shape.com/thmb/eRwJgRaiYmLPm3svqnPOPoblmUY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Yoga-For-Abs-GettyImages-1325708886-2000-9ec8e03309314a299c311248b0b6c8f3.jpg',
                  title: 'Intermediate Yoga posses',
                  subtitle: '30 minutes',
                ),
              ),
              const SizedBox(height: 20),
              const Text('For stress relief, try these exercises',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExerciseDetailsPage(
                        name: 'Stress relief Yoga',
                        image: 'https://res.cloudinary.com/peloton-cycle/image/fetch/f_auto,c_limit,w_3840,q_90/https://images.ctfassets.net/6ilvqec50fal/5fefgqDz99kCwpXPZ4NVGb/5a001fb53998fd05b22acd2d26f11076/Cobra_Pose.png',
                        description: 'A yoga session to help with relieving stress.',
                        duration: 15,
                      ),
                    ),
                  );
                },
                child: const RoundedContainerWidget(
                  imageUrl:
                      'https://res.cloudinary.com/peloton-cycle/image/fetch/f_auto,c_limit,w_3840,q_90/https://images.ctfassets.net/6ilvqec50fal/5fefgqDz99kCwpXPZ4NVGb/5a001fb53998fd05b22acd2d26f11076/Cobra_Pose.png',
                  title: 'Stress relief Yoga',
                  subtitle: '15 minutes',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
