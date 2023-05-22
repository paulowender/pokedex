import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/app/const/app_images.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/controllers/home_controller.dart';

class SearchBar extends GetView<HomeController> {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppThemes.primary,
                      size: 12,
                    ),
                    suffixIcon: controller.searchController.text.isEmpty
                        ? null
                        : IconButton(
                            icon: const Icon(
                              Icons.clear,
                              size: 9,
                            ),
                            onPressed: controller.searchController.clear,
                          ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 4,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              InkWell(
                onTap: controller.sort,
                // onTap: () => Get.dialog(const SortCard()),
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
}
