import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/const/app_consts.dart';
import 'package:pokedex/app/data/provider/pokemon_api.dart';
import 'package:pokedex/app/data/service/pokemon_service.dart';

void main() {
  final service = PokemonService(PokemonApi(AppConsts.pokedexApiUrl));

  test('getPokemons', () async {
    // Act
    final pokemons = await service.getPokemons(0, 10);

    expect(pokemons, hasLength(10));
  });

  test('getDetails', () async {
    // Get one pokemon
    final pokemons = await service.getPokemons(0, 1);

    // Act
    final details = await service.getDetails(pokemons[0]);

    // Assert
    expect(details, isNotNull);
  });
}
