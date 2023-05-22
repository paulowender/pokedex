import 'package:pokedex/app/data/models/pokemon.dart';
import 'package:pokedex/app/data/provider/pokedex.dart';

class PokedexService {
  static PokedexApi pokedexApi = PokedexApi();

  // Busca os 20 primeiros pokemons
  static Future<List<Pokemon>> getPokemons(int offset, int length) async {
    // Lista de pokemons para retornar
    List<Pokemon> pokemons = [];

    // Busca os 20 primeiros pokemons
    var response = await pokedexApi.getPokemons(offset: offset);

    // Verifica se a requisição foi bem sucedida
    if (response.statusCode == 200) {
      // Calcula o id dos pokemons
      int id = length + 1;

      // Pega o body da requisição e adiciona a lista de pokemons
      response.body["results"].forEach((element) {
        pokemons.add(Pokemon.fromJson(element, id: id));
        id++;
      });
    }

    // Retorna a lista de pokemons
    return pokemons;
  }
}
