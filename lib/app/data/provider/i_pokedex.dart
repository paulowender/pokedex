import 'package:get/get.dart';

abstract class IPokedexApi {
  final String baseUrl;

  IPokedexApi({required this.baseUrl});
  // Get pokemons list
  Future<Response> getPokemons({int limit = 20, int offset = 0});

  // Get pokemon details
  Future<Response> getDetails(int id);
}
