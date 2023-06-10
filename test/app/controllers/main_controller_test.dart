import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/const/app_consts.dart';
import 'package:pokedex/app/controllers/main_controller.dart';

void main() {
  final controller = MainController();
  test('MainController', () {
    expect(controller, isInstanceOf<MainController>());
  });

  setUp(() async {
    await controller.getPokemons();
  });

  test('Get pokemons', () async {
    expect(controller.pokemons, hasLength(AppConsts.defaultPageSize));
  });

  test('Sort by name', () {
    controller.sortByName();
    expect(controller.sortingByName, isTrue);
  });

  test('First Pokemon by name', () async {
    // await controller.getPokemons();
    controller.sortByName();
    expect(controller.pokemons, isNotEmpty);
    expect(controller.pokemons.first.name, 'Beedrill');
  });

  test('Sort by number', () {
    controller.sortByNumber();
    expect(controller.sortingByName, isFalse);
  });

  test('First Pokemon by number', () async {
    // await controller.getPokemons();
    controller.sortByNumber();
    expect(controller.pokemons, isNotEmpty);
    expect(controller.pokemons.first.id, '001');
  });

  test('Get next range', () async {
    final currentLength = controller.pokemons.length;
    final nextLength = currentLength + AppConsts.defaultPageSize;
    await controller.getNextRange();
    expect(controller.pokemons, hasLength(nextLength));
  });

  // Clean up
  tearDown(() {
    controller.pokemons.clear();
  });
}
