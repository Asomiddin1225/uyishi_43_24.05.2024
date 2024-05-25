

import 'package:flutter/material.dart';

Color appBarColor = Colors.blue; // Default color for AppBar
final List<Color> containerColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
]; // List of colors for containers
int selectedColorIndex = 0; // Index of the selected color

void changeAppBarColor(int index) {
  appBarColor = containerColors[index]; // Change AppBar color
  selectedColorIndex = index; // Update selected color index
}
