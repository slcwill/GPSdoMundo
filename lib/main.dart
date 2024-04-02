import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  const GpsDoMundo({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();
    // TODO: Aplicar o widget da página inicial
    // 3
    return MaterialApp(
      theme: theme,
      title: 'GPS do Mundo',
      home: const Home()
    );
  }
}