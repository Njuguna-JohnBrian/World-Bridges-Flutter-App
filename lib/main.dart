import 'package:flutter/material.dart';
import 'screens/landing_page.dart';


void main() => runApp(const WorldBridges());

class WorldBridges extends StatelessWidget {
  const WorldBridges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
