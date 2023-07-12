
import 'package:finance_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Expense Tracker App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}