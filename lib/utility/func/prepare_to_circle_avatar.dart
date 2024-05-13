import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PreoareToCircleAVatar {
  static List<Widget> prepareToCircleAvatar(
    BuildContext context,
    int selectedData,
  ) {
    return [
      const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      context.sized.emptySizedWidthBoxLow,
      const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      context.sized.emptySizedWidthBoxLow,
      const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      context.sized.emptySizedWidthBoxLow,
      const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      context.sized.emptySizedWidthBoxLow,
      const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      context.sized.emptySizedWidthBoxLow,
    ];
  }
}
