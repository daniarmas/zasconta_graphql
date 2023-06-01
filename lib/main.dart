import 'package:flutter/material.dart';
import 'package:zasconta_graphql/core/injection/injection_config.dart';

import 'presentation/pages/home_page.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
