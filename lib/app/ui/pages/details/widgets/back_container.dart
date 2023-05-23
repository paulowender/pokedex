import 'package:flutter/material.dart';
import 'package:pokedex/app/const/app_images.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/ui/global_widgets/containers/generic_container.dart';

class BackContainer extends GenericContainer {
  const BackContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 9,
      child: Image.asset(
        AppImages.bgPokeball,
        fit: BoxFit.cover,
        color: AppThemes.greyscaleLight.withOpacity(0.15),
        width: size.width * 0.58,
        // height: height,
      ),
    );
  }
}
