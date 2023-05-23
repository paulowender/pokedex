import 'package:flutter/material.dart';

class AppSizes {
  // Sizes from Figma
  static const double figmaWidth = 360;
  static const double figmaHeigth = 640;

  static double calcHeight(BuildContext context, double height) {
    return MediaQuery.of(context).devicePixelRatio * height;
  }

  static double calcWidth(BuildContext context, double width) {
    return MediaQuery.of(context).devicePixelRatio * width;
  }

  //   // Medidas do design no Figma
  // double larguraFigma = 200.0;
  // double alturaFigma = 150.0;

  // // Obtém a escala da tela
  // double escalaTela = MediaQuery.of(context).devicePixelRatio;

  // // Converte as medidas do Figma para o Flutter
  // double larguraFlutter = larguraFigma * escalaTela;
  // double alturaFlutter = alturaFigma * escalaTela;

  // // Sizes from Build
  // static double get buildWidth => Get.width;
  // static double get buildHeight => Get.height;

  // // Factor from Figma
  // static double get figmaFactor => figmaHeigth / figmaWidth;
  // // Factor from Build
  // static double get buildFactor => buildHeight / buildWidth;
  // // Factor different from Figma and Build
  // static double get factorDiff => buildFactor - figmaFactor;

  // static double calcSize(double value) => calcHeight(value);
  // static double calcWidth(double value) =>
  //     ((figmaWidth * value / 100) / 100) * Get.width;

  // static double calcHeight(double figmaHeigth) {
  //   debugPrint('-----------');
  //   debugPrint('CurrentHeigth: $buildHeight');
  //   debugPrint('CurrentWidth: $buildWidth');
  //   double height = figmaHeigth;

  //   double figmaPercentage = (height / figmaHeigth) / figmaFactor;

  //   double buildPercentage =
  //       (figmaPercentage * buildHeight * buildFactor) / 100;
  //   height = buildPercentage * buildHeight;

  //   debugPrint('FigmaHeigth: $figmaHeigth');
  //   debugPrint('BuildHeight: $height');

  //   debugPrint('FigmaPercentage: $figmaPercentage');
  //   debugPrint('BuildPercentage: $buildPercentage');

  //   debugPrint('buildFactor: $buildFactor');
  //   debugPrint('FigmaFactor: $figmaFactor');
  //   debugPrint('DiffFactor: $factorDiff');

  //   return height;
  // }
  // static double calcHeight(double value) =>
  //     ((figmaHeigth * value / 100) / 100) * Get.height;

  // static double calcWidth(double value) => value * factorWidth;
  // static double calcHeight(double value) => value * factorHeight;
}
