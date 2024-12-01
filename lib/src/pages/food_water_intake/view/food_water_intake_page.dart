import 'package:flutter/material.dart';

class FoodWaterIntakePage extends StatefulWidget {
  const FoodWaterIntakePage({super.key});

  @override
  State<FoodWaterIntakePage> createState() => _FoodWaterIntakePageState();
}

class _FoodWaterIntakePageState extends State<FoodWaterIntakePage> {
  int waterCount = 0;

  void incrementWater() {
    setState(() {
      waterCount++;
    });
  }

  void decrementWater() {
    setState(() {
      if (waterCount > 0) {
        waterCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FOOD & WATER INTAKE',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20), // Add some outer margin
              padding: const EdgeInsets.all(20), // Add some inner padding
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'You can log your glasses of water here',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: decrementWater,
                        icon: const Icon(Icons.remove_circle_outline),
                        color: Colors.blue,
                        iconSize: 36,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '$waterCount',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: incrementWater,
                        icon: const Icon(Icons.add_circle_outline),
                        color: Colors.blue,
                        iconSize: 36,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Here are some healthy food options for you:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://hips.hearstapps.com/hmg-prod/images/grilled-chicken-breast-index-6626cdb057b5b.jpg?crop=0.503xw:1.00xh;0.249xw,0&resize=1200:*',
                foodName: 'Grilled Chicken',
                calories: '250 kcal',
                protein: '30g',
                carbs: '5g',
                fats: '8g',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://www.eatingwell.com/thmb/PM3UlLhM0VbE6dcq9ZFwCnMyWHI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/EatingWell-April-Avocado-Toast-Directions-04-5b5b86524a3d4b35ac4c57863f6095dc.jpg',
                foodName: 'Avocado Toast',
                calories: '250 kcal',
                protein: '6g',
                carbs: '24g',
                fats: '15g',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://cdn.loveandlemons.com/wp-content/uploads/2020/08/quinoa-salad.jpg',
                foodName: 'Quinoa Salad',
                calories: '200 kcal',
                protein: '8g',
                carbs: '30g',
                fats: '5g',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://www.theroastedroot.net/wp-content/uploads/2022/08/sheet-pan-salmon-and-vegetables-5.jpg',
                foodName: 'Salmon with Veggies',
                calories: '300 kcal',
                protein: '25g',
                carbs: '10g',
                fats: '15g',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://cdn.exploremedlife.com/wp-content/uploads/2024/02/19082003/greek-yogurt-with-honey-and-berries.jpg',
                foodName: 'Greek Yogurt with Berries',
                calories: '150 kcal',
                protein: '10g',
                carbs: '18g',
                fats: '3g',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://www.allrecipes.com/thmb/bVkS34g0obsnekryLv8P7p5H6RE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/13978-Lentil-Soup-mfs-024-90c23fc84b1f491f8224b7674cdc8805.jpg',
                foodName: 'Lentil Soup',
                calories: '180 kcal',
                protein: '12g',
                carbs: '25g',
                fats: '4g',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: FoodInfoCard(
                imageUrl:
                'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FPhoto%2FRecipes%2F2022-11-spinach-omelet%2Fspinach-omelet_003',
                foodName: 'Egg and Spinach Omelet',
                calories: '220 kcal',
                protein: '15g',
                carbs: '2g',
                fats: '16g',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodInfoCard extends StatelessWidget {
  final String imageUrl;
  final String foodName;
  final String calories;
  final String protein;
  final String carbs;
  final String fats;

  const FoodInfoCard({
    required this.imageUrl,
    required this.foodName,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fats,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildNutrientInfo('Calories', calories),
                      _buildNutrientInfo('Protein', protein),
                      _buildNutrientInfo('Carbs', carbs),
                      _buildNutrientInfo('Fats', fats),
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

  Widget _buildNutrientInfo(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}