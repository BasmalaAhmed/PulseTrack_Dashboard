import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: AppStyles.regular12Style.copyWith(color: const Color(0XFFE2E8F0)),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        filled: true,
        fillColor: Color(0XFF1A2232),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: AppColors.kGrey94Color,
          size: 20,
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 36,
        ),
        hint: Text(
          'Search projects or tasks',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.regular12Style,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0XFF232B3B)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0XFF232B3B)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.kGrey33Color),
        ),
      ),
    );
  }
}
