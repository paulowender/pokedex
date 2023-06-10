import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/widget/animated_image.dart';

import '../../const/app_themes.dart';
import '../../controllers/main_controller.dart';
import 'widgets/background_pokeball.dart';
import 'widgets/details.dart';
import 'widgets/navigation.dart';
import 'widgets/top_bar.dart';

/// DetailsPage
///
/// Page to show details of a pokemon.
class DetailsPage extends GetView<MainController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Obx(
        () => Material(
          color: controller.details.value.types.first.color ??
              AppThemes.greyscaleWireframe,
          child: Stack(
            children: [
              // Background Container
              BackgrounPokeballWidget(size: size),
              // Details Card
              DetailsWidget(size: size),
              // Navigation bottons
              NavigationWidget(size: size),
              // Column with Top Bar and Image
              Column(
                children: [
                  // App Bar
                  TopBarWidget(size: size),
                  // Image
                  AnimatedImage(
                    image: controller.selectedPokemon.value.image,
                    width: size.width * 0.54,
                    direction: controller.direction.value,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
