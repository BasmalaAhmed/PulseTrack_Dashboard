import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, this.loaded, this.remaining});
  final double? loaded;
  final double? remaining;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
              children: [
                Expanded(
                  flex: (loaded ?? 150).round(),
                  child: Container(
                    width: loaded ?? 150,
                    height: 6,
                    decoration: BoxDecoration(
                      color: colors.secondary,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(9)),
                    ),
                  ),
                ),
                Expanded(
                  flex: (remaining ?? 34).round(),
                  child: Container(
                    width: remaining ?? 34,
                    height: 6,
                    decoration: BoxDecoration(
                      color: colors.outline,
                      borderRadius: .horizontal(right: Radius.circular(9)),
                    ),
                  ),
                ),
              ],
            );
  }
}