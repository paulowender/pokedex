import 'dart:ui';

class PokemonType {
  final String name;
  final Color color;

  PokemonType({required this.name, required this.color});

  static List<PokemonType> pokemonTypes = [
    PokemonType(name: 'Bug', color: const Color(0xFFA7B723)),
    PokemonType(name: 'Dark', color: const Color(0xFF75574C)),
    PokemonType(name: 'Dragon', color: const Color(0xFF7037FF)),
    PokemonType(name: 'Electric', color: const Color(0xFFF9CF30)),
    PokemonType(name: 'Fairy', color: const Color(0xFFE69EAC)),
    PokemonType(name: 'Fighting', color: const Color(0xFFC12239)),
    PokemonType(name: 'Fire', color: const Color(0xFFF57D31)),
    PokemonType(name: 'Flying', color: const Color(0xFFA891EC)),
    PokemonType(name: 'Ghost', color: const Color(0xFF70559B)),
    PokemonType(name: 'Normal', color: const Color(0xFFAAA67F)),
    PokemonType(name: 'Grass', color: const Color(0xFF74CB48)),
    PokemonType(name: 'Ground', color: const Color(0xFFDEC16B)),
    PokemonType(name: 'Ice', color: const Color(0xFF94D6DF)),
    PokemonType(name: 'Poison', color: const Color(0xFFA43E9E)),
    PokemonType(name: 'Psychic', color: const Color(0xFFFB5584)),
    PokemonType(name: 'Rock', color: const Color(0xFFB69E31)),
    PokemonType(name: 'Steel', color: const Color(0xFFB7B9D0)),
    PokemonType(name: 'Water', color: const Color(0xFF6493EB))
  ];
}
