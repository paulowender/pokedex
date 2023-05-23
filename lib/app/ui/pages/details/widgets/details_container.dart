import 'package:flutter/material.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/ui/global_widgets/containers/generic_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/about_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/base_stats_container.dart';
import 'package:pokedex/app/ui/pages/details/widgets/types_container.dart';

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
