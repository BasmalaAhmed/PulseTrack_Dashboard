import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardModel {
  final String title;
  final FaIconData icon;
  final String number;
  final Widget widget;
  final bool chart;
  final Color? color;
  final Color? borderColor;
  final Color? iconColor;

  const CardModel({required this.title, required this.icon, required this.number, required this.widget, this.chart = false, this.color, this.borderColor, this.iconColor});
}