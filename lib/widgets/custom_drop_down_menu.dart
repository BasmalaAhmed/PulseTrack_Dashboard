import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  final List<String> _options = ['Last 7 Days', 'Last 14 Days', 'Last 30 Days'];

  String? _selectedValue = 'Last 7 Days';

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DropdownMenu<String>(
      expandedInsets: EdgeInsets.zero,
      initialSelection: _selectedValue,
      requestFocusOnTap: true,
      selectOnly: true,
      onSelected: (String? value) {
        setState(() {
          _selectedValue = value;
        });
      },
      dropdownMenuEntries: _options.map<DropdownMenuEntry<String>>((
        String value,
      ) {
        return DropdownMenuEntry<String>(
          value: value,
          label: value,
          style: MenuItemButton.styleFrom(
            textStyle: AppStyles.medium12Style,
            foregroundColor: colors.onSurface,
          ),
        );
      }).toList(),
      textStyle: AppStyles.medium12Style.copyWith(color: colors.onSurface),
      decorationBuilder: (context, controller) {
        return InputDecoration(
          isDense: true,
          isCollapsed: true,
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: colors.surfaceContainerHighest,
          prefixIcon: Icon(
            Icons.calendar_today_rounded,
            size: 16,
            color: colors.onSurfaceVariant,
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 36,
            minHeight: 36,
          ),
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: colors.onSurfaceVariant,
            size: 18,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 28,
            minHeight: 36
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
        );
      },
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          colors.surfaceContainerHighest,
        ),
      ),
    );
  }
}
