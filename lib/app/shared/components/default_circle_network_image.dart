import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/app/shared/components/default_circular_progress_indicator.dart';
import 'package:flutter/material.dart';

class DefaultCircleNetworkImage extends StatelessWidget {
  final String photo;
  final double width;
  final double height;
  const DefaultCircleNetworkImage({Key? key, required this.photo, this.width = 50, this.height = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: CachedNetworkImage(
        imageUrl: photo,
        fit: BoxFit.cover,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => DefaultCircularProgressIndicator(),
        errorWidget: (context, url, error) => Container(),
      ),
    );
  }
}
