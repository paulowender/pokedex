import 'package:get/get.dart';

import '../../const/app_consts.dart';

class PokemonApi extends GetConnect {
  final String apiUrl;

  PokemonApi(this.apiUrl);
  // Get pokemons list
  Future<Response> getPokemons({
    int limit = AppConsts.defaultPageSize,
    int offset = 0,
  }) =>
      get('$apiUrl?limit=$limit&offset=$offset');

  // Get pokemon details
  Future<Response> getDetails(int id) => get('$apiUrl$id');
}
