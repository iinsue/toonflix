import 'package:flutter/material.dart';
import 'package:toonflix/widgets/stateless_example.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const StatelessExample();
  }
}
