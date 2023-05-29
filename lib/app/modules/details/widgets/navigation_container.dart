import 'package:flutter/material.dart';

import '../../../const/app_images.dart';
import '../../../widget/generic_container.dart';

/// Navigation Container
///
/// Widget that displays navigation buttons
class NavigationContainer extends GenericContainer {
  const NavigationContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.28,
      left: 16,
      right: 16,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!controller.isFirst)
            IconButton(
              onPressed:
                  controller.isFirst ? null : controller.showPreviousPokemon,
              icon: Image.asset(
                AppImages.getImage('arrow_back_ios'),
                // width: 16,
              ),
              color: Colors.white,
            ),
          Expanded(child: Container()),
          if (!controller.isLast)
            IconButton(
              onPressed: controller.showNextPokemon,
              icon: Image.asset(
                AppImages.getImage('arrow_forward_ios'),
                // width: 16,
              ),
              color: Colors.white,
            ),
          if (controller.isLast) Expanded(child: Container()),
        ],
      ),
    );
  }
}
