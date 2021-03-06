import 'package:flutter/material.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;
  // final PixabayApi api;

  const PhotoWidget({
    Key? key,
    required this.photo,
    // required this.api,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(photo.previewUrl),
        ),
      ),
    );
  }
}
