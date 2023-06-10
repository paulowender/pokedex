import 'package:flutter/material.dart';

import '../../../const/app_images.dart';
import '../../../const/app_themes.dart';
import '../../../widget/generic_container.dart';

/// Back Container
///
/// Widget that displays a pokeball at the top of the screen.
class BackgrounPokeballWidget extends GenericContainer {
  const BackgrounPokeballWidget({super.key, required super.size});

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
