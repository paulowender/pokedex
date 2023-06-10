import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_images.dart';
import '../../../const/app_text_themes.dart';
import '../../../widget/generic_container.dart';

/// TopBar
///
/// Widget that shows the top bar of the screen.
class TopBarWidget extends GenericContainer {
  const TopBarWidget({super.key, required super.size});

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
                  AppImages.getImageFromAsset('arrow_back'),
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
                  style: AppTextThemes.subtitle2.copyWith(
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
