import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class AppImage extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  final double radius;

  const AppImage({
    Key key,
    @required this.url,
    this.height,
    this.width,
    this.radius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(radius),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.imagePreview, arguments: url);
          },
          child: CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.cover,
            height: height,
            width: width,
          ),
        ),
      );
}
