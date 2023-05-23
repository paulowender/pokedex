// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/app/data/models/pokemon_type.dart';

/// TypeCard
///
/// Widget that displays a list of types.
class TypeCard extends StatelessWidget {
  final PokemonType type;
  const TypeCard(
    this.type, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: type.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        type.name,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
