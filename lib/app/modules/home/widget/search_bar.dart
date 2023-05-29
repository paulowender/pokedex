import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_images.dart';
import '../../../const/app_texts.dart';
import '../../../const/app_themes.dart';
import '../../../controllers/main_controller.dart';
import 'sort_card.dart';

/// PokemonCard
///
/// Widget that displays a field with a search bar.
class SearchField extends GetView<MainController> {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: SizedBox(
        height: 32,
        child: GetBuilder<MainController>(builder: (controller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: controller.searchController,
                  style: AppTexts.body3,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: AppTexts.body3,
                    fillColor: AppThemes.white,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppThemes.primary,
                      size: 16,
                    ),
                    suffixIcon: controller.searchController.text.isEmpty
                        ? null
                        : IconButton(
                            icon: const Icon(
                              Icons.clear,
                              size: 16,
                              color: AppThemes.primary,
                            ),
                            onPressed: controller.searchController.clear,
                          ),
                    contentPadding: const EdgeInsets.only(
                      left: 10,
                      right: 16,
                      top: 8,
                      bottom: 8,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              InkWell(
                // onTap: controller.sort,
                onTap: () {
                  _showAlertDialog(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    controller.sortingByName
                        ? AppImages.sortByName
                        : AppImages.sortByNumber,
                    height: 11,
                    width: 11,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SortCard(size: MediaQuery.of(context).size),
        );
      },
    );
  }
}
