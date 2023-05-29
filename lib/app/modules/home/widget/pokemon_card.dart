// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/data/models/pokemon.dart';
import 'package:pokedex/app/modules/home/widget/background_card.dart';
import 'package:pokedex/app/modules/home/widget/image_card.dart';

/// PokemonCard
///
/// Widget that displays a list item.
class PokemonCard extends StatelessWidget {
  final int index;
  final Pokemon pokemon;
  final void Function()? onTap;

  const PokemonCard({
    Key? key,
    required this.index,
    required this.pokemon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Stack(children: [
          const BackgroundCardHome(),
          ImageCard(image: pokemon.image),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 4, top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    '#${pokemon.id}',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppThemes.greyscaleMedium,
                    ),
                    textAlign: TextAlign.end,
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pokemon.name,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppThemes.greyscaleDarkText,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
