import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/ui/global_widgets/containers/generic_container.dart';

class ImageContainer extends GenericContainer {
  const ImageContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Image.asset(
        controller.selectedPokemon.value.image,
        fit: BoxFit.cover,
        width: size.width * 0.65,
      ),
    );
  }
}
