import 'package:flutter/material.dart';
import 'package:world_bridges/colors.dart';
import 'package:world_bridges/screens/landing_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LandingPage(),
          ),
        );
      },
    );
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(color: mainYellow),
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.airplanemode_active,
            color: Colors.black,
            size: 90,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.black.withOpacity(0.2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
