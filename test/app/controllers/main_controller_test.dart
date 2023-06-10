import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/const/app_consts.dart';
import 'package:pokedex/app/controllers/main_controller.dart';

void main() {
  final controller = MainController();
  test('MainController', () {
    expect(controller, isInstanceOf<MainController>());
  });
  // setUp(controller.getNextRange);
  test('Get pokemons', () async {
    await controller.getPokemons();
    expect(controller.pokemons, hasLength(AppConsts.defaultPageSize));
  });

  test('Get next range', () async {
    final currentLength = controller.pokemons.length;
    final nextLength = currentLength + AppConsts.defaultPageSize;
    await controller.getNextRange();
    expect(controller.pokemons, hasLength(nextLength));
  });

  test('Sort by name', () {
    controller.sortByName();
    expect(controller.sortingByName, isTrue);
  });

  test('Sort by number', () {
    controller.sortByNumber();
    expect(controller.sortingByName, isFalse);
  });

  // Clean up
  tearDown(() {
    controller.pokemons.clear();
  });
}
