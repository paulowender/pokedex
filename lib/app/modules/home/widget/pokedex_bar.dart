import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/app_images.dart';

/// PokedexBarWidget
///
/// Widget that displays an image.
class PokedexBarWidget extends StatelessWidget {
  const PokedexBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.12),
            child: Image.asset(
              AppImages.pokeball,
              color: Colors.white,
              fit: BoxFit.contain,
              width: 24,
              height: 24,
            ),
          ),
          Text(
            'Pokédex',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
