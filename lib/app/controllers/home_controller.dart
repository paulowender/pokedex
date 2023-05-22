import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/data/service/pokedex_service.dart';
import 'package:pokedex/app/routes/pages.dart';

import '../data/models/pokemon.dart';

class HomeController extends GetxController {
  // Controller para o scroll
  ScrollController scrollController = ScrollController();

  // Controller para o campo de busca
  TextEditingController searchController = TextEditingController();

  // Página atual
  int offset = 0;

  // Ordenando por nome
  bool sortingByName = false;

  // Lista de pokemons
  final List<Pokemon> _pokemons = [];

  // Pokemon selecionado para exibir detalhes
  Rx<Pokemon> selectedPokemon =
      Pokemon(id: '000', name: 'Pokemon', url: '').obs;

  // Getter para lista de pokemons
  List<Pokemon> get pokemons => searchController.text.isEmpty
      ? _pokemons
      : _pokemons.where(searchCompare).toList();

  // Função para comparar pokemons
  bool searchCompare(Pokemon pokemon) {
    if (sortingByName) {
      return pokemon.name
          .trim()
          .toLowerCase()
          .contains(searchController.text.trim().toLowerCase());
    } else {
      return '#${pokemon.id}'
          .trim()
          .toLowerCase()
          .contains(searchController.text.trim().toLowerCase());
    }
  }

  // Busca os 20 primeiros pokemons
  Future<void> getPokemons() async {
    List<Pokemon> result =
        await PokedexService.getPokemons(offset, _pokemons.length);
    _pokemons.addAll(result);
    sortByNumber();
    update();
  }

  // Busca os proximos 20 pokemons
  void getNextRange() {
    offset += 20;
    getPokemons();
  }

  // Ordena a lista de pokemons por nome
  void sortByName() {
    _pokemons.sort((a, b) => a.name.compareTo(b.name));
    update();
  }

  // Ordena a lista de pokemons por numero
  void sortByNumber() {
    _pokemons.sort((a, b) => a.id.compareTo(b.id));
    update();
  }

  // Alterna entre ordenação por nome e por numero
  void sort() {
    if (sortingByName) {
      sortByNumber();
    } else {
      sortByName();
    }
    sortingByName = !sortingByName;
  }

  void goToDetails(Pokemon pokemon) async {
    selectedPokemon.value = pokemon;

    Get.toNamed(Routes.DETAILS, arguments: pokemon);
  }

  @override
  void onInit() async {
    getPokemons();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getNextRange();
      }
    });
    searchController.addListener(() {
      update();
    });
    super.onInit();
  }
}
