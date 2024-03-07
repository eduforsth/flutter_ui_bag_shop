import 'package:flutter/material.dart';
import 'package:ui_online_shop/constants.dart';
import 'package:ui_online_shop/screens/app_bar.dart';
import 'package:ui_online_shop/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: sTextColor)
      ),
      title: 'Material App',
      home: Scaffold(
        appBar : myAppBar(),
        body:  const HomeScreen(),

      ),
    );
  }


}