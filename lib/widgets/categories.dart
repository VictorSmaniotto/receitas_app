import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.currentCat,
  });

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Container(
            decoration: BoxDecoration(
              color: currentCat == categories[index]
                  ? kprimaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            margin: const EdgeInsets.only(right: 15),
            child: Text(
              categories[index],
              style: TextStyle(
                  color: currentCat == categories[index]
                      ? Colors.white
                      : Colors.grey.shade600),
            ),
          ),
        ),
      ),
    );
  }
}
