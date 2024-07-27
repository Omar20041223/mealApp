import 'package:flutter/material.dart';
import 'package:meal/Screens/detailsScreen.dart';
import 'package:meal/Screens/homeScreen.dart';
import 'package:meal/Screens/meals.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "mealScreen" :(context)=>MealScreen(),
        "detailsScreen" :(context)=>DetailsScreen(),
      },
      home: HomeScreen(),
    );
  }
}
