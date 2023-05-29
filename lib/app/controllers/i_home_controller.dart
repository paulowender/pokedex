import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../const/sorting_option.dart';
import '../data/models/pokemon_details.dart';

import '../data/models/pokemon.dart';

abstract class IHomeController {
  // Controller para o scroll
  late ScrollController scrollController;

  // Controller para o campo de busca
  late TextEditingController searchController;

  // Página atual
  late int offset;

  // Ordenando por nome
  late Rx<SortOption> sortingOption;
  bool get sortingByName => sortingOption.value == SortOption.name;

  // Lista de pokemons
  late final List<Pokemon> _pokemons;

  // Pokemon selecionado para exibir detalhes
  late Rx<Pokemon> selectedPokemon;

  // Detalhes do pokemon selecionado
  late Rx<PokemonDetails> details;

  // Verifica se é o primeiro pokemon ou o último da lista
  bool get isFirst => _pokemons.first.id == selectedPokemon.value.id;
  bool get isLast => _pokemons.last.id == selectedPokemon.value.id;

  // Lista de pokemons filtrada
  List<Pokemon> get pokemons => _pokemons.where(searchCompare).toList();

  // Função para comparar pokemons
  bool searchCompare(Pokemon pokemon);

  // Busca os 20 primeiros pokemons
  Future<void> getPokemons();

  // Busca os proximos 20 pokemons
  void getNextRange();

  // Ordena a lista de pokemons por nome
  void sortByName();

  // Ordena a lista de pokemons por numero
  void sortByNumber();

  void goToDetails(Pokemon pokemon, int index, {bool openScreen = true});

  void toPreviousPokemon();

  void toNextPokemon();
}
