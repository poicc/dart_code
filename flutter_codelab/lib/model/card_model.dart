import 'package:flutter/material.dart';

class CardModel {
  String title;
  int? number;
  IconData? icon;

  CardModel(this.title, {this.number = 0, this.icon});
}
