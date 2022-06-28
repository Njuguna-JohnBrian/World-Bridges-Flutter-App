import 'package:flutter/material.dart';
import 'package:world_bridges/colors.dart';

class TopAppBar extends AppBar {
  TopAppBar({
    Key? key,
  }) : super(
          key: key,
          elevation: 0.0,
          backgroundColor: primaryGray,
          iconTheme: IconThemeData(
            color: mainYellow,
          ),
          title: Center(
            child: Icon(
              Icons.airplanemode_on,
              color: mainYellow,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                right: 10,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_on_outlined,
                  color: Colors.grey,
                ),
                onPressed: (){},
              ),
            )
          
          ],
        );
}
