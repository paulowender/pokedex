import 'dart:ui';

import 'package:get/get.dart';

class PokemonType {
  final int slot;
  final String name;
  final Color? color;

  PokemonType({
    required this.slot,
    required this.name,
    this.color,
  });

  factory PokemonType.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final Map<String, dynamic>? color = pokemonTypes.firstWhereOrNull(
        (map) => map['name'].toLowerCase() == type['name'].toLowerCase());

    return PokemonType(
      slot: json['slot'],
      name: color?['name'] ?? type['name'],
      color: color?['color'],
    );
  }

  factory PokemonType.empty() => PokemonType(slot: 0, name: '', color: null);

  static List<PokemonType> fromJsonList(List<dynamic> json) =>
      json.map((e) => PokemonType.fromJson(e)).toList();
  // json["types"].forEach((map) {
  //   types.add(PokemonType.fromJson(map));
  // });
  static List<Map<String, dynamic>> pokemonTypes = [
    {"name": 'Bug', "color": const Color(0xFFA7B723)},
    {"name": 'Dark', "color": const Color(0xFF75574C)},
    {"name": 'Dragon', "color": const Color(0xFF7037FF)},
    {"name": 'Electric', "color": const Color(0xFFF9CF30)},
    {"name": 'Fairy', "color": const Color(0xFFE69EAC)},
    {"name": 'Fighting', "color": const Color(0xFFC12239)},
    {"name": 'Fire', "color": const Color(0xFFF57D31)},
    {"name": 'Flying', "color": const Color(0xFFA891EC)},
    {"name": 'Ghost', "color": const Color(0xFF70559B)},
    {"name": 'Normal', "color": const Color(0xFFAAA67F)},
    {"name": 'Grass', "color": const Color(0xFF74CB48)},
    {"name": 'Ground', "color": const Color(0xFFDEC16B)},
    {"name": 'Ice', "color": const Color(0xFF94D6DF)},
    {"name": 'Poison', "color": const Color(0xFFA43E9E)},
    {"name": 'Psychic', "color": const Color(0xFFFB5584)},
    {"name": 'Rock', "color": const Color(0xFFB69E31)},
    {"name": 'Steel', "color": const Color(0xFFB7B9D0)},
    {"name": 'Water', "color": const Color(0xFF6493EB)},
  ];
}
