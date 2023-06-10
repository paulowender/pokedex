import 'package:intl/intl.dart';

import '../../const/app_images.dart';

class Pokemon {
  final String id;
  final String name;
  final String url;
  final String image;

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
      image: AppImages.getPokemonImageUrl(id.toString()),
    );
  }

  factory Pokemon.empty() => Pokemon(
        id: '',
        name: '',
        url: '',
        image: '',
      );
}
