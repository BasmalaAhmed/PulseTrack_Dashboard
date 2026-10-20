import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
import 'package:pulse_track_dashboard/widgets/custom_card.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key, required this.items, required this.crossAxisCount});
  final List<CardModel> items;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        mainAxisExtent: 160,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomCard(cardModel: items[index]);
      },
      
    );
  }
}