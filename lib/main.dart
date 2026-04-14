import 'package:flutter/material.dart';
import 'inicio.dart';
import 'capturajuguetes.dart';
import 'verjuguetes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spidey-saurus',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPantalla(),
        '/captura': (context) => const CapturaJuguetesPantalla(),
        '/ver': (context) => const VerJuguetesPantalla(),
      },
    );
  }
}
