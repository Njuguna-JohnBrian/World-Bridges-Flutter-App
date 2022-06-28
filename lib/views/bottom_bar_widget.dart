import 'package:flutter/material.dart';
import 'package:world_bridges/colors.dart';

import '../models/bottom_bar_model.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 2,
      ),
      padding: EdgeInsets.all(
        10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          bottomBarListItems.length,
          (index) {
            var barItemWidget = bottomBarListItems[index];
            return IconButton(
              icon: Icon(barItemWidget.icon),
              color: barItemWidget.isSelected! ? mainYellow : Colors.grey,
              onPressed: () {
                setState(() {
                  bottomBarListItems.forEach((element) {
                    element.isSelected = element == barItemWidget;
                  });
                });
              },
            );
          },
        ),
      ),
    );
  }
}
