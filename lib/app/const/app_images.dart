import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppImages {
  static const String images = 'assets/images';
  static const String pokemons = '$images/pokemons';
  static const String pokemon = '$images/pokemon.png';
  static const String pokeball = '$images/pokeball.png';
  static const String bgPokeball = '$images/bg_pokeball.png';
  static const String weight = '$images/weight.png';
  static const String sortByName = '$images/sort_by_name.png';
  static const String sortByNumber = '$images/sort_by_number.png';

  // Função responsável por retornar uma imagem
  static String getImage(String name) {
    // Monta o caminho da imagem
    String path = '$images/$name.png';

    // Caso exista a imagem, retorna
    if (GetPlatform.isWeb || File(path).existsSync()) {
      return path;
    }

    // Caso não exista a imagem, retorna a imagem padrão
    debugPrint('$path does not exist');
    return pokemon;
  }

  // Função responsável por retornar uma imagem da pasta pokemons
  static String getPokemonImage(String id) {
    // Monta o caminho da imagem
    String pokemonsPath = 'pokemons/$id';

    // Retorna a imagem
    return getImage(pokemonsPath);
  }
}
