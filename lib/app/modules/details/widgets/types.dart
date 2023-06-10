import 'package:flutter/material.dart';

import '../../../widget/generic_container.dart';
import 'type.dart';

/// TypeCard
///
/// Widget that displays a list of types
class TypesWidget extends GenericContainer {
  const TypesWidget({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: controller.details.value.types
            .map((type) => TypeWidget(type))
            .toList(),
      ),
    );
  }
}
