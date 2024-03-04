import 'package:flutter/material.dart';
import 'package:mental_health_app/home_screen.dart';
import 'package:mental_health_app/news_screen.dart';
import 'package:mental_health_app/workout_screen.dart';

void main() {
  runApp(const MentalHealthApp());
}
class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NewsScreen.routeName,
      routes: {
        HomeScreen.routeName: (context)=> HomeScreen(),
        WorkoutScreen.routeName: (context)=> WorkoutScreen(),
        NewsScreen.routeName: (context)=> NewsScreen(),
      },
    );
  }
}
