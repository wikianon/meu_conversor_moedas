import 'package:flutter/material.dart';
import 'app/views/home_view.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Moedas',
      theme: ThemeData.dark(),
      home: const HomeView(),
    ); //MaterialApp
  }
}