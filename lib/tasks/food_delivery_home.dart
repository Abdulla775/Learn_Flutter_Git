import 'package:flutter/material.dart';
import 'package:learn_flutter/models/category_model.dart';
import 'package:learn_flutter/widgets/category_widget.dart';

class FoodDeliveryHome extends StatelessWidget {
  FoodDeliveryHome({super.key});
  List<CategoryModel> CategoryData = [
    CategoryModel(categoryTitle: "Main", CategoryIcon: '🥟'),
    CategoryModel(categoryTitle: "Soups", CategoryIcon: '🍜'),
    CategoryModel(categoryTitle: "Salads", CategoryIcon: '🥗'),
    CategoryModel(categoryTitle: "Drinks", CategoryIcon: '🥤'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 236, 236),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // meny and icon profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 30, weight: 22),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xffC9CCE8),
                      child: Icon(Icons.person),
                    ),
                  ],
                ),

                SizedBox(height: 34),
                Text(
                  "Good food.\nFast delivery.",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 113,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: CategoryData.length,

                    itemBuilder: (context, i) {
                      return CategoryWidget(category: CategoryData[i]);
                    },
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
