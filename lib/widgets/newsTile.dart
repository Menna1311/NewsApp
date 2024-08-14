import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(8.0), // Adjust the radius as needed
          child: CachedNetworkImage(
            imageUrl: article.image ?? '',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) =>
                Image.asset('assets/noImage.jpg'),
          ),
        ),
        Text(
          article.title ?? 'No Title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          article.subtitle ?? 'No Subtitle Available',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
