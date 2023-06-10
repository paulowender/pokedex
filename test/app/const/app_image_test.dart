import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/const/app_images.dart';

void main() {
  group('AppImage', () {
    test('getImageFromAsset', () {
      expect(
          AppImages.getImageFromAsset('pokemon'), 'assets/images/pokemon.png');
    });

    test('getPokemonImageUrl', () {
      expect(
        AppImages.getPokemonImageUrl('pokemon'),
        'https://nexus.traction.one/images/pokemon/pokemon/pokemon.png',
      );
    });
  });
}
