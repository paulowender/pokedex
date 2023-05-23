import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/app/const/app_images.dart';
import 'package:pokedex/app/const/app_texts.dart';
import 'package:pokedex/app/ui/global_widgets/containers/generic_container.dart';

/// TopBar
///
/// Widget that shows the top bar of the screen.
class TopBar extends GenericContainer {
  const TopBar({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
            left: 16,
            right: 24,
            bottom: 24,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: Get.back,
                child: Image.asset(
                  AppImages.getImage('arrow_back'),
                  width: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Obx(
                () => Text(
                  controller.selectedPokemon.value.name,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Obx(
                () => Text(
                  '#${controller.selectedPokemon.value.id}',
                  textAlign: TextAlign.right,
                  style: AppTexts.subtitle2.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
