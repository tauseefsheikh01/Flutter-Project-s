import 'package:flutter/material.dart';


class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key, required this.categoryId, required this.categoryTitle});

  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: const Center(
        child: Text(
          'The recipes for the categories',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
