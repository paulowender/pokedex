import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_controller.dart';
import 'widget/list_pokemon.dart';
import 'widget/pokedex_bar.dart';
import 'widget/search_bar.dart';

/// Home Page
///
/// Page that shows the list of pokemons

class HomePage extends GetView<MainController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 4,
          right: 4,
          bottom: 4,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PokedexBar(),
            SearchField(),
            ListPokemon(),
          ],
        ),
      ),
    );
  }
}
