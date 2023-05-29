import 'package:flutter/material.dart';

import '../../../const/app_themes.dart';
import '../../../widget/generic_container.dart';
import 'about_container.dart';
import 'base_stats_container.dart';
import 'types_container.dart';

/// Details Container
///
/// Widget that displays all details of a pokemon.
class DetailsContainer extends GenericContainer {
  const DetailsContainer({super.key, required super.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 4,
      left: 4,
      right: 4,
      child: Container(
        height: size.height * 0.635,
        decoration: const BoxDecoration(
          color: AppThemes.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.only(
          top: 56,
          right: 20,
          left: 20,
          bottom: 8,
        ),
        child: Column(
          children: [
            // Container with Types
            TypesContainer(size: size),
            // Container with About Data
            AboutContainer(size: size),
            // Simulate the description spacing
            const Spacer(),
            // Container with Base Stats
            BaseStatsContainer(size: size),
          ],
        ),
      ),
    );
  }
}
