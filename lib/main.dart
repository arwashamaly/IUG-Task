import 'package:flutter/material.dart';
import 'package:iug_task/PostScreen.dart';

import 'FirstTask.dart';
import 'MealDetailsTask2/MealDetailsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MealDetailsScreen(),
    );
  }
}

