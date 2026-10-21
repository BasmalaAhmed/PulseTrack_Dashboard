import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Search',
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color(0XFF1A2232),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0XFF232B3B)),
        ),
        child: Icon(
          Icons.search_rounded,
          size: 20,
          color: AppColors.kGrey94Color,
        ),
      ),
    );
  }
}
