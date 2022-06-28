import 'package:flutter/material.dart';

import '../colors.dart';
import '../views/app_bar.dart';
import '../views/attraction_list_view.dart';
import '../views/bottom_bar_widget.dart';
import '../views/drawer.dart';
import '../views/header_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryGray,
              secondaryGray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, 
          children: [
            HeaderWidget(), 
            AttractionListView(),
            BottomBarWidget()
          ],
        ),
      ),
    );
  }
}
