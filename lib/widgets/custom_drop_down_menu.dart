import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
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
            foregroundColor: Color(0XFFE2E8F0),
          ),
        );
      }).toList(),
      textStyle: AppStyles.medium12Style.copyWith(color: Color(0XFFE2E8F0)),
      decorationBuilder: (context, controller) {
        return InputDecoration(
          isDense: true,
          isCollapsed: true,
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Color(0XFF1A2232),
          prefixIcon: Icon(
            Icons.calendar_today_rounded,
            size: 16,
            color: AppColors.kGrey94Color,
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 36,
            minHeight: 36,
          ),
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.kGrey94Color,
            size: 18,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 28,
            minHeight: 36
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
            borderSide: BorderSide(color: AppColors.kSecondaryColor),
          ),
        );
      },
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          AppColors.kTertiaryColor,
        ),
      ),
    );
  }
}
