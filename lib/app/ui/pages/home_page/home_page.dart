import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/controllers/home_controller.dart';
import 'package:pokedex/app/ui/global_widgets/pokedex_bar.dart';
import 'package:pokedex/app/ui/global_widgets/pokemon_card.dart';
import 'package:pokedex/app/ui/global_widgets/search_bar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Width: ${MediaQuery.of(context).size.width}');
    debugPrint('Height: ${MediaQuery.of(context).size.height}');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PokedexBar(),
            const SearchBar(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                margin: const EdgeInsets.only(top: 16),
                // padding: const EdgeInsets.all(8),
                padding: const EdgeInsets.only(
                  top: 8,
                  right: 4,
                  left: 4,
                ),
                child: GetBuilder<HomeController>(
                    builder: (HomeController controller) {
                  return GridView.builder(
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
                      onTap: () =>
                          controller.goToDetails(controller.pokemons[index]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
