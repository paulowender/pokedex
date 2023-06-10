import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/const/app_consts.dart';
import 'package:pokedex/app/data/provider/pokemon_api.dart';

void main() {
  group('PokemonApi', () {
    final api = PokemonApi(AppConsts.pokedexApiUrl);

    test('getPokemons', () async {
      // Act
      final response = await api.getPokemons();

      // Assert
      expect(response.statusCode, 200);
    });

    test('getDetails', () async {
      // Arrange
      final response = await api.getDetails(1);

      // Assert
      expect(response.statusCode, 200);
    });
  });
}
