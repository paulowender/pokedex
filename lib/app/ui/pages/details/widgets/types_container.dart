import 'package:flutter/material.dart';
import 'package:pokedex/app/ui/global_widgets/containers/generic_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/type_card.dart';

class TypesContainer extends GenericContainer {
  const TypesContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: controller.details.value.types
            .map((type) => TypeCard(type))
            .toList(),
      ),
    );
  }
}
