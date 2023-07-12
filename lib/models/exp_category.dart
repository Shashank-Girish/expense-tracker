import 'package:finance_app/constants/icons.dart';
import 'package:flutter/material.dart';

class ExpenseCategory {
  final String name;
  final IconData icon;
  final Color color;
  int entries = 0;
  double amount = 0.0;


  ExpenseCategory({
    required this.name,
    required this.icon,
    required this.color,
    this.entries = 0,
    this.amount = 0.0,

  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'color': color.value,
      'entries': entries,
      'amount': amount,
    };
  }
  factory ExpenseCategory.fromMap(Map<String, dynamic> map) {
    return ExpenseCategory(
      name: map['name'],
      icon: iconsMap[map['name']]!,
      color: Color(map['color']),
      entries: map['entries'],
      amount: map['amount'],
    );
  }
}