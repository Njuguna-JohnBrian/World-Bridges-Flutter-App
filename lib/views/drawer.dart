import 'package:flutter/material.dart';
import 'package:world_bridges/colors.dart';

class AppDrawer extends Drawer {
  AppDrawer({Key? key})
      : super(key: key, 
          child: Container(
            color: mainYellow,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(
              20,
            ),
            child: const Icon(
              Icons.airplanemode_on,
              size: 80,
              color: Colors.black,
            ),
          ),
        );
}
