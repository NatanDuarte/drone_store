import 'package:drone_store/constants.dart';
import 'package:drone_store/screens/home/home_screen.dart';
import 'package:drone_store/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appTitle,
      theme: ThemeData(
          scaffoldBackgroundColor: customBackgroundColor,
          appBarTheme: const AppBarTheme(color: customPrimaryColor),
          primaryColor: customPrimaryColor,
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: customTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(),
    );
  }
}
