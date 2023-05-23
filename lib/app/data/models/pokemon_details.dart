import 'package:pokedex/app/data/models/pokemon_stats.dart';
import 'package:pokedex/app/data/models/pokemon_type.dart';

class PokemonDetails {
  final List<PokemonType> types;
  final int weight;
  final int height;
  final List<String> moves;
  final List<String> abilities;
  final List<Stats> stats;

  PokemonDetails({
    required this.types,
    required this.weight,
    required this.height,
    required this.moves,
    required this.abilities,
    required this.stats,
  });

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    List<PokemonType> types = PokemonType.fromJsonList(json["types"]);
    List<String> moves = [];

    json["moves"].forEach((e) {
      String name = e["move"]["name"];
      moves.add(name.replaceFirst(name[0], name[0].toUpperCase()));
    });

    List<String> abilities = [];
    json["abilities"].forEach((e) {
      String name = e["ability"]["name"];
      abilities.add(name.replaceFirst(name[0], name[0].toUpperCase()));
    });
    if (abilities.length > 2) {
      abilities = abilities.sublist(0, 2);
    }

    List<Stats> stats =
        (json["stats"] as List<dynamic>).map((e) => Stats.fromMap(e)).toList();

    return PokemonDetails(
      types: types,
      weight: json["weight"] as int,
      height: json["height"] as int,
      moves: moves,
      abilities: abilities,
      stats: stats,
    );
  }

  factory PokemonDetails.empty() => PokemonDetails(
        types: <PokemonType>[],
        weight: 0,
        height: 0,
        moves: <String>[],
        abilities: <String>[],
        stats: <Stats>[],
      );
}
