import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_circle_pro_ind.dart';

class CacheImage extends StatelessWidget {
  const CacheImage(
      {super.key,
      required this.url,
      required this.width,
      required this.height});
  final double height;
  final double width;
  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: url,
      height: height,
      width: width,
      progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
        height: height,
        width: width,
        child: const CustomCircleProgIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
