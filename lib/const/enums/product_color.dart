// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum ProductColor {
  Orange,
  Yellow,
  Red,
  Purple,
  Green,
  Black;
}

extension ProductColorExtension on ProductColor {
  Color getColor() {
    switch (this) {
      case ProductColor.Orange:
        return Colors.orange;
      case ProductColor.Yellow:
        return Colors.yellow;
      case ProductColor.Red:
        return Colors.red;
      case ProductColor.Purple:
        return Colors.purple;
      case ProductColor.Green:
        return Colors.green;
      default:
        return Colors.black;
    }
  }
}
