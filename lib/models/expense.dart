import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category { food, travel, leiseur, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leiseur: Icons.movie,
  Category.work: Icons.work
};

/// This is a sample class that demonstrates how to add documentation comments.
///
/// The `Expense` class is used to illustrate how to add comments that show up in the IDE
/// when you hover over the class.
class Expense {
  
  final String id;
  /// The `title` property holds a simple string value.
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}
