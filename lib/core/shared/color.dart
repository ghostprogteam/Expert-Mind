import 'package:flutter/material.dart';


class ProjectColors{
  static Color  mainColor = Color(0xFF246BFD);
  static Color whiteColor = Colors.white;
  static Color whiteColor10 = Colors.white10;
  static Color blackColor = Colors.black;
  static Color greyColors200 = Colors.grey.shade200;
  static Color amberColor =  Colors.amber;
  static Color greyColor =  Colors.grey;
}
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });

  return MaterialColor(color.value, swatch);
}