import 'package:flutter/material.dart';
import 'package:pokedex/app/widget/animated_image.dart';

/// ImageCard
///
/// Widget that displays an image.
class ImageCard extends StatelessWidget {
  final String image;
  const ImageCard({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: 20,
        ),
        child: AnimatedImage(image: image),
      ),
    );
  }
}
