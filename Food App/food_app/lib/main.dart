import 'package:flutter/material.dart';

import '../screens/meal_detail_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/categories_meals_screens.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        // canvasColor: Colors.grey[400],
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoriesMealsScreen.routeName: (ctx) => const CategoriesMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
      },
    );
  }
}
