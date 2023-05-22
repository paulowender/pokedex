import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/app/const/app_images.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/controllers/home_controller.dart';

class DetailsPage extends GetView<HomeController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppThemes.greyscaleWireframe,
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 9,
            child: Image.asset(
              AppImages.bgPokeball,
              fit: BoxFit.cover,
              color: AppThemes.greyscaleLight.withOpacity(0.2),
              width: 206,
              height: 208,
            ),
          ),
          Positioned(
            bottom: 4,
            left: 4,
            right: 4,
            // top: 224,
            child: Container(
                height: 390,
                decoration: const BoxDecoration(
                  color: AppThemes.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.only(
                  top: 56,
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [])
                  ],
                )),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 16,
                  right: 24,
                  bottom: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: Get.back,
                      icon: Image.asset(
                        AppImages.getImage('arrow_back'),
                        width: 21,
                        height: 21,
                      ),
                      color: Colors.white,
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
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppImages.getImage('arrow_back_ios'),
                        width: 21,
                        height: 21,
                      ),
                      color: Colors.white,
                    ),
                    Obx(
                      () => Image.asset(
                        controller.selectedPokemon.value.image,
                        fit: BoxFit.cover,
                        // TODO
                        // width: AppSizes.calcWidth(200),
                        // height: AppSizes.calcHeight(200),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppImages.getImage('arrow_forward_ios'),
                        width: 21,
                        height: 21,
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
