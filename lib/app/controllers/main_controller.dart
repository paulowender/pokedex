import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/app_consts.dart';
import '../const/app_images.dart';
import '../const/app_status.dart';
import '../const/sorting_option.dart';
import '../data/models/pokemon.dart';
import '../data/models/pokemon_details.dart';
import '../data/provider/pokemon_api.dart';
import '../data/service/pokemon_service.dart';
import '../routes/pages.dart';

/// Controller principal da aplicação
/// Gerencia o estado da aplicação
class MainController extends GetxController {
  // Status da aplicação
  AppState state = AppState.loading;

  // Atualiza o estado para carregando
  void startLoading() {
    state = AppState.loading;
    update();
  }

  // Atualiza o estado para finalizado
  void stopLoading() {
    state = AppState.done;
    update();
  }

  // Instancia do serviço
  final PokemonService _pokedexService =
      PokemonService(PokemonApi(AppConsts.pokedexApiUrl));

  // Controller para o scroll
  ScrollController scrollController = ScrollController();

  // Controller para o campo de busca
  TextEditingController searchController = TextEditingController();

  // Direção de animação das imagens
  Rx<AnimationDirection> direction = AnimationDirection.none.obs;

  // Página atual
  int offset = 0;

  // Ordenando por nome
  Rx<SortOption> sortingOption = SortOption.number.obs;
  bool get sortingByName => sortingOption.value == SortOption.name;

  // Lista de pokemons
  final List<Pokemon> _pokemons = [];
  bool get hasPokemons => _pokemons.isNotEmpty;

  // Pokemon selecionado para exibir detalhes
  Rx<Pokemon> selectedPokemon = Pokemon.empty().obs;
  Rx<PokemonDetails> details = PokemonDetails.empty().obs;
  bool get isFirst => _pokemons.first.id == selectedPokemon.value.id;
  bool get isLast => _pokemons.last.id == selectedPokemon.value.id;

  // Getter para lista de pokemons
  List<Pokemon> get pokemons => searchController.text.isEmpty
      ? _pokemons
      : _pokemons.where(searchCompare).toList();

  // Função para comparar pokemons
  bool searchCompare(Pokemon pokemon) {
    // Obtem o campo a ser comparado para busca
    String campo = sortingByName ? pokemon.name : '#${pokemon.id}';

    // Remove espaços em brancos, transforma em minusculo e compara
    return campo
        .trim()
        .toLowerCase()
        .contains(searchController.text.trim().toLowerCase());
  }

  void changeDirection(AnimationDirection direction) {
    this.direction.value = direction;
  }

  // Busca os 20 primeiros pokemons
  Future<void> getPokemons() async {
    List<Pokemon> result =
        await _pokedexService.getPokemons(offset, _pokemons.length);
    _pokemons.addAll(result);
    sortByNumber();
    update();
  }

  // Busca os proximos 20 pokemons
  Future<void> getNextRange() async {
    offset += AppConsts.defaultPageSize;
    await getPokemons();
  }

  // Ordena a lista de pokemons por nome
  void sortByName() {
    _pokemons.sort((a, b) => a.name.compareTo(b.name));
    sortingOption.value = SortOption.name;
    update();
  }

  // Ordena a lista de pokemons por numero
  void sortByNumber() {
    _pokemons.sort((a, b) => a.id.compareTo(b.id));
    sortingOption.value = SortOption.number;
    update();
  }

  // Busca os detalhes do pokemon e abre a tela de detalhes
  void goToDetails(
    Pokemon pokemon,
    int index, {
    bool openScreen = true,
  }) async {
    selectedPokemon.value = pokemon;
    details.value = await _pokedexService.getDetails(pokemon);

    if (openScreen) {
      Get.toNamed(Routes.DETAILS, arguments: direction)?.then((value) {
        changeDirection(AnimationDirection.none);
      });
    }
  }

  // Exibe detalhes do pokemon anterior ao selecionado
  void showPreviousPokemon() {
    final index = _pokemons.indexOf(selectedPokemon.value);
    if (index > 0) {
      changeDirection(AnimationDirection.left);
      goToDetails(
        _pokemons[index - 1],
        index,
        openScreen: false,
      );
    }
  }

  // Exibe detalhes do proximo pokemon ao selecionado
  void showNextPokemon() {
    final index = _pokemons.indexOf(selectedPokemon.value);
    if (index < _pokemons.length - 1) {
      changeDirection(AnimationDirection.right);
      goToDetails(
        _pokemons[index + 1],
        index,
        openScreen: false,
      );
    }
  }

  // Atualiza a lista de pokemons
  Future<void> refreshPokemons() async => await getNextRange();

  @override
  void onInit() async {
    await getPokemons();
    stopLoading();
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
