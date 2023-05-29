import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_images.dart';
import '../../../const/app_texts.dart';
import '../../../const/app_themes.dart';
import '../../../widget/generic_container.dart';

/// Image Card
///
/// Widget that displays details about a pokemon.
class AboutContainer extends GenericContainer {
  const AboutContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'About',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: controller.details.value.types.first.color,
              ),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Obx(
                  () => Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 12),
                        _values(
                          AppImages.getImage('weight'),
                          '${controller.details.value.weight / 10} kg',
                        ),
                        const SizedBox(height: 12),
                        _caption('Weight'),
                      ],
                    ),
                  ),
                ),
                const VerticalDivider(
                  color: AppThemes.greyscaleLight,
                  thickness: 1,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 12),
                      Obx(
                        () => _values(
                          AppImages.getImage('height'),
                          '${controller.details.value.height / 10} m',
                        ),
                      ),
                      const SizedBox(height: 12),
                      _caption('Height'),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: AppThemes.greyscaleLight,
                  thickness: 1,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (final ability
                              in controller.details.value.abilities)
                            Text(
                              ability,
                              style: AppTexts.body3,
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _caption('Abilities'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _caption(String text) {
    return Text(
      text,
      style: AppTexts.caption,
      textAlign: TextAlign.center,
    );
  }

  Widget _values(String image, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 14,
          color: AppThemes.greyscaleDark,
          fit: BoxFit.fill,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: AppTexts.body3,
        )
      ],
    );
  }
}
