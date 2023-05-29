import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

import '../const/app_images.dart';

class AnimatedImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final AnimationDirection direction;
  const AnimatedImage({
    super.key,
    required this.image,
    this.width,
    this.height,
    this.direction = AnimationDirection.none,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: image.hashCode,
      child: CachedNetworkImage(
        imageUrl: image,
        cacheKey: image,
        fit: BoxFit.cover,
        width: width,
        height: height,
        imageBuilder: (context, imageProvider) {
          if (direction == AnimationDirection.left) {
            return BounceInLeft(child: Image(image: imageProvider));
          }
          if (direction == AnimationDirection.right) {
            return BounceInRight(child: Image(image: imageProvider));
          }
          return HeartBeat(child: Image(image: imageProvider));
        },
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
