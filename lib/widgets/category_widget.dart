import 'package:flutter/material.dart';
import 'package:learn_flutter/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  CategoryModel category;
  bool isSelected = false;
  CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 11,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.only(right: 17),
          alignment: AlignmentGeometry.center,
          height: 77,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            category.CategoryIcon ?? "",
            style: TextStyle(fontSize: 47),
          ),
        ),
        Text(
          category.categoryTitle ?? "Default Category",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
