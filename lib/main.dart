import 'package:flutter/material.dart';
import 'package:iug_task/PostData.dart';
import 'package:iug_task/PostScreen.dart';
import 'package:provider/provider.dart';

import 'FirstTask.dart';
import 'MealDetailsTask2/MealDetailsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostData>(
      create: (context) {
        return PostData();
      },
      child: MaterialApp(
        theme: Util.isDark ? ThemeData.dark() : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: PostScreen(updateScreen),
      ),
    );
  }
}

class Util {
  static bool isDark = false;
}
