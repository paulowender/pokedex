import 'package:flutter/material.dart';
import 'package:pokedex/app/const/app_themes.dart';

class SortCard extends StatelessWidget {
  const SortCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 113,
      height: 132,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppThemes.primary,
        ),
      ),
    );
  }
}
