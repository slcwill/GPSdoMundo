import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard(
      {super.key,
      required this.authorName,
      required this.title,
      this.imageProvider});

  @override
  Widget build(BuildContext context) {
    // TODO: Substitua return Container(...) por...
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,criando cartões - parte 1
        children: [
          CircleImage(imageProvider: imageProvider,
          imageRadius: 28,
          ),

          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: GpsdoMundoTheme.lightTextTheme.displayMedium,
              ),
              Text(
                title,
                style: GpsdoMundoTheme.lightTextTheme.displaySmall)           
            ],
          ),

          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],

            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          )
        ],
      ),
    );
  }
}