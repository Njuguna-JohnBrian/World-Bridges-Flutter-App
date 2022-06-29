import 'package:flutter/material.dart';
import 'screens/splash_page_screen.dart';


void main() => runApp(const WorldBridges());

class WorldBridges extends StatelessWidget {
  const WorldBridges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
