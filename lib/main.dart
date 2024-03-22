import 'package:flutter/material.dart';
import 'package:invoice/%20%20view/screen/addpro.dart';
import 'package:invoice/%20%20view/screen/bill.dart';
import 'package:invoice/%20%20view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' :(context) => HomeScreen(),
        '/addPro':(context) => AddProduct(),
        '/view' : (context) => ViewPri(),
      },
    );
  }
}
