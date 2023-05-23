import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/controllers/home_controller.dart';
import 'package:pokedex/app/ui/pages/details/widgets/back_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/details_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/image_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/navigation_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/top_bar.dart';

class DetailsPage extends GetView<HomeController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Material(
          color: controller.details.value.types.first.color ??
              AppThemes.greyscaleWireframe,
          child: Stack(
            children: [
              // Background Container
              BackContainer(size: size),
              // Details Card
              DetailsContainer(size: size),
              // Navigation bottons
              NavigationContainer(size: size),
              // Column with Top Bar and Image
              Column(
                children: [
                  // App Bar
                  TopBar(size: size),
                  // Image
                  ImageContainer(size: size),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
