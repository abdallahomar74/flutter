import 'package:flutter/material.dart';

class OnboardingModel {
  late String title, subtitle, images;
  late Color color;
  OnboardingModel({
    required this.images,
    required this.title,
    required this.subtitle,
    this.color = Colors.black,
  });
}
