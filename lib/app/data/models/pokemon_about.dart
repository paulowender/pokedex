// import 'dart:ui';

// import 'package:get/get.dart';

// class PokemonType {
//   final int slot;
//   final String name;
//   final Color? color;

//   PokemonType({
//     required this.slot,
//     required this.name,
//     this.color,
//   });

//   factory PokemonType.fromJson(Map<String, dynamic> json) {
//     final type = json['type'];
//     final Map<String, dynamic>? color = pokemonTypes.firstWhereOrNull(
//         (map) => map['name'].toLowerCase() == type['name'].toLowerCase());

//     return PokemonType(
//       slot: json['slot'],
//       name: color?['name'] ?? type['name'],
//       color: color?['color'],
//     );
//   }

//   factory PokemonType.empty() => PokemonType(slot: 0, name: '', color: null);

//   static List<PokemonType> fromJsonList(List<dynamic> json) =>
//       json.map((e) => PokemonType.fromJson(e)).toList();
  
// }
