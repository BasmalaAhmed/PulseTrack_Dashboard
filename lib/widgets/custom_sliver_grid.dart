import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
import 'package:pulse_track_dashboard/widgets/custom_card.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
    required this.items,
    required this.crossAxisCount,
  });
  final List<CardModel> items;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    const gap = 12.0;
    final rows = <Widget>[];

    for (var i = 0; i < items.length; i += crossAxisCount) {
      if (i > 0) rows.add(const SizedBox(height: gap));
      rows.add(
        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 160),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var j = i; j < i + crossAxisCount; j++) ...[
                  if (j > i) const SizedBox(width: gap),
                  Expanded(
                    child: j < items.length
                        ? CustomCard(cardModel: items[j])
                        : const SizedBox.shrink(),
                  ),
                ],
              ],
            ),
          ),
        ),
      );
    }
    return Column(children: rows);
  }
}
