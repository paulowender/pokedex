import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_text_themes.dart';
import '../../../const/app_themes.dart';
import '../../../const/sorting_option.dart';
import '../../../widget/generic_container.dart';

/// SortWidget
///
/// Widget that displays a sort option.
class SortWidget extends GenericContainer {
  const SortWidget({super.key, required super.size});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.3,
      height: size.height * 0.2,
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
                    style: AppTextThemes.subtitle2.copyWith(
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
          const SizedBox(width: 4),
          Text(
            title,
            style: AppTextThemes.body3,
          ),
        ],
      ),
    );
  }
}
