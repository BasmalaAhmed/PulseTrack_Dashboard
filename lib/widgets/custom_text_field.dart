import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: AppStyles.regular12Style.copyWith(color: colors.onSurface),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        filled: true,
        fillColor: colors.surfaceContainerHighest,
        prefixIcon: Icon(
          Icons.search_rounded,
          color: colors.onSurfaceVariant,
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
          borderSide: BorderSide(color: colors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.secondary),
        ),
      ),
    );
  }
}
