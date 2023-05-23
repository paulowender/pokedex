import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
        child: Hero(
          tag: image,
          child: CachedNetworkImage(
            imageUrl: image,
            width: 72,
            height: 72,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
