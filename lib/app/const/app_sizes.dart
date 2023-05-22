import 'package:flutter/material.dart';

class AppSizes {
  static const double initialWidth = 360;
  static const double initialHeight = 640;

  double _height = initialHeight;
  double _width = initialWidth;

  AppSizes(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _height = MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top;
      _width = MediaQuery.of(context).size.width;
    });
    debugPrint('Width: $_width');
    debugPrint('Height: $_height');
  }

  double height(double value) {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .height *
        ((value * 100 / _height) / 100);
  }

  double width(double value) {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .width *
        ((value * 100 / _width) / 100);
  }

  double get currentWidth => _width;
  double get currentHeight => _height;

  // Widget HeightSpace(double value) {
  //   return SizedBox(
  //     height: height(value),
  //   );
  // }

  // Widget WidthSpace(double value) {
  //   return SizedBox(
  //     width: width(value),
  //   );
  // }

  // static dynamicsize size = dynamicsize(initialHeight, initialWidth);

  // static double get factorWidth => Get.width / initialWidth;
  // static double get factorHeight => Get.height / initialHeight;

  // static double calcWidth(double value) => size.width(value);
  // static double calcHeight(double value) => size.height(value);
  // static double calcWidth(double value) => value * factorWidth;
  // static double calcHeight(double value) => value * factorHeight;

  // height = size.height(20);
  // width = size.width(20);
  // size.HeightSpace(20);
  // size.WidthSpace(20);
}
