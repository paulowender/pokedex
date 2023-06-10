import '../models/pokemon.dart';
import '../models/pokemon_details.dart';
import '../provider/pokemon_api.dart';

class PokemonService {
  PokemonService(this.pokedexApi);

  final PokemonApi pokedexApi;

  // Busca os 20 primeiros pokemons
  Future<List<Pokemon>> getPokemons(int offset, int length) async {
    // Lista de pokemons para retornar
    List<Pokemon> pokemons = [];

    // Busca os 20 primeiros pokemons
    var response = await pokedexApi.getPokemons(offset: offset, limit: length);

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

  Future<PokemonDetails> getDetails(Pokemon pokemon) async {
    var response = await pokedexApi.getDetails(int.parse(pokemon.id));

    // Verifica se a requisição foi bem sucedida
    if (response.statusCode == 200) {
      return PokemonDetails.fromJson(response.body);
    }
    return PokemonDetails.empty();
  }
}
