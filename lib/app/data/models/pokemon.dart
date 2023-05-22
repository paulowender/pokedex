import 'package:intl/intl.dart';
import 'package:pokedex/app/const/app_images.dart';

class Pokemon {
  final String id;
  final String name;
  final String url;
  final String image;

  // String get nameUpperCase => name[0].toUpperCase() + name.substring(1);

  // String get idx => NumberFormat("000").format(id);

  Pokemon({
    required this.id,
    required this.name,
    required this.url,
    this.image = '',
  });

  factory Pokemon.fromJson(Map<String, dynamic> json, {int? id}) {
    // Format number to show in 4 digits
    String idx = NumberFormat("000").format(id);
    return Pokemon(
      id: idx,
      name: json['name'][0].toUpperCase() + json['name'].substring(1),
      url: json['url'],
      image: AppImages.getPokemonImage(idx),
    );
  }

  // String get image => AppImages.getPokemonImage(idx);//PokemonData.getImage(name);
}
