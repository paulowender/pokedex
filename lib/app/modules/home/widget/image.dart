import 'package:flutter/material.dart';
import 'package:pokedex/app/widget/animated_image.dart';

/// ImageWidget
///
/// Widget that displays an image.
class ImageWidget extends StatelessWidget {
  final String image;
  const ImageWidget({super.key, required this.image});
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
