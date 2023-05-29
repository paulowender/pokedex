import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_status.dart';
import '../../../controllers/main_controller.dart';
import 'pokemon_card.dart';
import 'text_empty_list.dart';

class ListPokemon extends StatelessWidget {
  // final HomeController controller = Get.find<HomeController>();

  const ListPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.only(
          top: 8,
          right: 4,
          left: 4,
        ),
        child: GetBuilder<MainController>(
          builder: (MainController controller) {
            switch (controller.state) {
              case AppState.loading:
                return const Center(child: CircularProgressIndicator());
              case AppState.done:
                return RefreshIndicator(
                  onRefresh: controller.refreshPokemons,
                  child: GridView.builder(
                    controller: controller.scrollController,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    padding: const EdgeInsets.only(
                      top: 16,
                      right: 4,
                      left: 4,
                      bottom: 0,
                    ),
                    itemCount: controller.pokemons.length,
                    itemBuilder: (context, index) => PokemonCard(
                      index: index,
                      pokemon: controller.pokemons[index],
                      onTap: () => controller.goToDetails(
                        controller.pokemons[index],
                        index,
                      ),
                    ),
                  ),
                );
              default:
                return const TextEmptyList();
            }
          },
        ),
      ),
    );
  }
}
