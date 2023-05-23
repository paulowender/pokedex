import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/ui/global_widgets/containers/generic_container.dart';

class ImageContainer extends GenericContainer {
  const ImageContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CachedNetworkImage(
        imageUrl: controller.selectedPokemon.value.image,
        fit: BoxFit.cover,
        width: 200,
        height: 200,
      ),
    );
  }
}
