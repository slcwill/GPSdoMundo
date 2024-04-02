import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://br.freepik.com/fotos-premium/foto-de-paisagem-tirada-em-serpentine-road-em-masca-espanha_16163903.htm#query=penhasco&position=16&from_view=keyword&track=sph&uuid=a31d7651-4edf-4418-9d35-202f162513ae'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Adam Simon',
            title: 'Software Engineer',
            imageProvider: NetworkImage(
                'https://www.denofgeek.com/wp-content/uploads/2021/09/Anthony-Mackie.png?1200%2C883'),
          ),

          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Rio',
                    style: GpsdoMundoTheme.lightTextTheme.displayLarge),
                ),
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(quarterTurns: 3,
                  child: Text(
                    'Pão de Açúcar',
                    style: GpsdoMundoTheme.lightTextTheme.displayLarge),
                  ),
                ),
              ]
            ),
          )
        ]),
      ),
    );
  }
}