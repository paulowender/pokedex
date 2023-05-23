import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/const/app_images.dart';
import 'package:pokedex/app/const/app_texts.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/controllers/home_controller.dart';
import 'package:pokedex/app/ui/pages/home_page/widgets/sort_card.dart';

/// PokemonCard
///
/// Widget that displays a field with a search bar.
class SearchField extends GetView<HomeController> {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: SizedBox(
        height: 32,
        child: GetBuilder<HomeController>(builder: (controller) {
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
        return const Center(
          child: SortCard(),
        );
      },
    );
  }
}
