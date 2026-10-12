import 'package:flutter/material.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.loaded, this.remaining});
  final double? loaded;
  final double? remaining;

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Container(
                  width: loaded ?? 150,
                  height: 6,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF59E0B),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                Container(
                  width: remaining ?? 34,
                  height: 6,
                  decoration: BoxDecoration(
                    color: const Color(0XFF1F2937),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ],
            );
  }
}