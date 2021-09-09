import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NetworkImageView extends StatelessWidget {
  const NetworkImageView({
    @required this.photoUrl,
    @required this.radius,
    this.borderColor,
    this.borderWidth,
    this.onPressed,
  });
  final String photoUrl;
  final double radius;
  final Color borderColor;
  final double borderWidth;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: photoUrl == null
          ? Container(
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                border: Border.all(color: borderColor, width: borderWidth),
              ),
              child: Icon(Icons.add_a_photo),
            )
          : CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: photoUrl,
              placeholder: (context, string) {
                return Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(radius)),
                    border: Border.all(
                        color: borderColor ?? Colors.white,
                        width: borderWidth ?? 1),
                  ),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              imageBuilder: (context, imageProvider) => Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  border: Border.all(
                      color: borderColor ?? Colors.white,
                      width: borderWidth ?? 1),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
    );
  }
}
