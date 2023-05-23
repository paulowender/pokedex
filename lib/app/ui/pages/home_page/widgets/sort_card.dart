import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/const/app_texts.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/const/sorting_option.dart';
import 'package:pokedex/app/controllers/home_controller.dart';

/// SortCard
///
/// Widget that displays a sort option.
class SortCard extends GetView<HomeController> {
  const SortCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 113,
      height: 132,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppThemes.primary,
        ),
        padding: const EdgeInsets.only(
          left: 4,
          right: 4,
          bottom: 4,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sort by:',
                    style: AppTexts.subtitle2.copyWith(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    Obx(
                      () => _option<SortOption>(
                        'Number',
                        value: SortOption.number,
                        groupValue: controller.sortingOption.value,
                        onChanged: (v) {
                          controller.sortByNumber();
                          Get.back();
                        },
                      ),
                    ),
                    Obx(
                      () => _option<SortOption>(
                        'Name',
                        value: SortOption.name,
                        groupValue: controller.sortingOption.value,
                        onChanged: (v) {
                          controller.sortByName();
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Returns an option row.
  Widget _option<T>(
    String title, {
    required T value,
    void Function(dynamic)? onChanged,
    required T? groupValue,
  }) {
    return InkWell(
      onTap: () {
        onChanged?.call(value);
      },
      child: Row(
        children: [
          Radio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: AppThemes.primary,
            fillColor: MaterialStateColor.resolveWith(
              (states) => AppThemes.primary,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: AppTexts.body3,
          ),
        ],
      ),
    );
  }
}
