import 'package:flutter/material.dart';

import '../../../const/app_themes.dart';

/// BackgroundCardHome
///
/// Widget to display a background card of the list items.
class BackgroundCardHome extends StatelessWidget {
  const BackgroundCardHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 44,
              decoration: const BoxDecoration(
                color: AppThemes.greyscaleBackground,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
