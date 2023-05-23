// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/app/const/app_themes.dart';
import 'package:pokedex/app/data/models/pokemon.dart';
import 'package:pokedex/app/ui/pages/home_page/widgets/background_card.dart';
import 'package:pokedex/app/ui/pages/home_page/widgets/image_card.dart';

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
    // return BackCard(image: pokemon.image);
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
    // child: Container(
    //   margin: const EdgeInsets.all(4),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(8),
    //     color: Colors.white,
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black.withOpacity(0.2),
    //         spreadRadius: 2,
    //         blurRadius: 2,
    //         offset: const Offset(0, 3),
    //       )
    //     ],
    //   ),
    //   padding: const EdgeInsets.only(top: 4),
    //   child: Stack(
    //     children: [
    //       Positioned(
    //         bottom: 0,
    //         left: 0,
    //         right: 0,
    //         child: Container(
    //           // height: 44,
    //           decoration: const BoxDecoration(
    //             // color: AppThemes.greyscaleBackground,
    //             borderRadius: BorderRadius.all(Radius.circular(8)),
    //             gradient: LinearGradient(
    //               begin: Alignment.topCenter,
    //               end: Alignment.bottomCenter,
    //               colors: [
    //                 Colors.white,
    //                 // AppThemes.white,
    //                 AppThemes.greyscaleBackground,
    //               ],
    //               stops: [0.6, 0.0],
    //             ),
    //           ),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Row(mainAxisAlignment: MainAxisAlignment.end, children: [
    //               Text(
    //                 '#${pokemon.id}',
    //                 style: GoogleFonts.poppins(fontSize: 10),
    //                 textAlign: TextAlign.end,
    //               )
    //             ]),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   pokemon.name,
    //                   style: GoogleFonts.poppins(
    //                     // fontSize: AppSizes.calcSize(10),
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                   textAlign: TextAlign.center,
    //                 )
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
    // );
  }
}
