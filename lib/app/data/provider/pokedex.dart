import 'package:get/get.dart';

const baseUrl = 'https://pokeapi.co/api/v2/pokemon/';

class PokedexApi extends GetConnect {
  // Get pokemons list
  Future<Response> getPokemons({int limit = 20, int offset = 0}) =>
      get('$baseUrl?limit=$limit&offset=$offset');

  // Get pokemon details
  Future<Response> getDetails(int id) => get('$baseUrl$id');
}
