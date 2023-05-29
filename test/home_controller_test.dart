// import 'package:flutter/src/widgets/editable_text.dart';
// import 'package:flutter/src/widgets/scroll_controller.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:pokedex/app/const/sorting_option.dart';
// import 'package:pokedex/app/controllers/home_controller.dart';
// import 'package:pokedex/app/controllers/i_home_controller.dart';
// import 'package:pokedex/app/data/models/pokemon.dart';
// import 'package:pokedex/app/data/models/pokemon_details.dart';

// class HomeControllerTest extends Mock implements IHomeController {
//   @override
//   Rx<PokemonDetails> details = PokemonDetails.empty().obs;

//   @override
//   int offset = 0;

//   @override
//   ScrollController scrollController = ScrollController();

//   @override
//   TextEditingController searchController = TextEditingController();

//   @override
//   Rx<Pokemon> selectedPokemon = Pokemon(
//     id: '000',
//     name: 'Pokemon',
//     url: '',
//   ).obs;

//   @override
//   Rx<SortOption> sortingOption = SortOption.number.obs;

//   @override
//   void getNextRange() {
//     // TODO: implement getNextRange
//   }

//   @override
//   Future<void> getPokemons() {
//     // TODO: implement getPokemons
//     throw UnimplementedError();
//   }

//   @override
//   void goToDetails(Pokemon pokemon, int index, {bool openScreen = true}) {
//     // TODO: implement goToDetails
//   }

//   @override
//   // TODO: implement isFirst
//   bool get isFirst => throw UnimplementedError();

//   @override
//   // TODO: implement isLast
//   bool get isLast => throw UnimplementedError();

//   @override
//   // TODO: implement pokemons
//   List<Pokemon> get pokemons => throw UnimplementedError();

//   @override
//   bool searchCompare(Pokemon pokemon) {
//     // TODO: implement searchCompare
//     throw UnimplementedError();
//   }

//   @override
//   void sortByName() {
//     // TODO: implement sortByName
//   }

//   @override
//   void sortByNumber() {
//     // TODO: implement sortByNumber
//   }

//   @override
//   // TODO: implement sortingByName
//   bool get sortingByName => throw UnimplementedError();

//   @override
//   void toNextPokemon() {
//     // TODO: implement toNextPokemon
//   }

//   @override
//   void toPreviousPokemon() {
//     // TODO: implement toPreviousPokemon
//   }
// }