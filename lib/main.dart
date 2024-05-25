import 'package:flutter/material.dart';
import 'package:uyishi_43/utils/app_constants.dart';
import 'package:uyishi_43/views/screens/home_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeThemeMode(bool isDark) {
    AppConstants.themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppConstants.appBarColor,
        ),
        scaffoldBackgroundColor: AppConstants.scaffoldColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: AppConstants.textSize,
            color: AppConstants.textColor,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: AppConstants.themeMode,
      home: HomeScreen(onThemeModeChanged: changeThemeMode),
    );
  }
}
