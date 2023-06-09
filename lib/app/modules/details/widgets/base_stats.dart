import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_themes.dart';
import '../../../widget/generic_container.dart';

/// Base stats container
///
/// Widget that displays base stats list of pokemon.
class BaseStatsWidget extends GenericContainer {
  const BaseStatsWidget({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Base Stats',
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
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: controller.details.value.stats.map((stats) {
                      return Text(
                        stats.stat.initials,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: controller.details.value.types.first.color,
                        ),
                        textAlign: TextAlign.right,
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 8),
                const VerticalDivider(
                  color: AppThemes.greyscaleLight,
                  thickness: 1,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: controller.details.value.stats.map((stats) {
                      return Row(
                        children: [
                          Text(
                            stats.value,
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: stats.baseStat / 248,
                              color: controller.details.value.types.first.color,
                              backgroundColor: controller
                                  .details.value.types.first.color
                                  ?.withOpacity(0.2),
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
