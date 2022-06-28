import 'package:flutter/material.dart';
import 'package:world_bridges/models/attraction_model.dart';
import 'package:world_bridges/views/attraction_card.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 10,
        ),
        itemCount: attractions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          AttractionModel currentAttractionItem = attractions[index];

          return AttractionCard(
            attractionModel: currentAttractionItem,
          );
        },
      ),
    );
  }
}
