import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardModel {
  final String title;
  final FaIconData icon;
  final String number;
  final Widget widget;
  final bool chart;

  const CardModel({required this.title, required this.icon, required this.number, required this.widget, this.chart = false,});
}