import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/switch_tabs_item.dart';

class CustomSwitchTabs extends StatefulWidget {
  const CustomSwitchTabs({super.key});

  @override
  State<CustomSwitchTabs> createState() => _CustomSwitchTabsState();
}

class _CustomSwitchTabsState extends State<CustomSwitchTabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colors.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SwitchTabsItem(
              isActive: selectedIndex == 0,
              onTap: () => setState(() {
                selectedIndex = 0;
              }),
              title: 'Story Points',
            ),
            SwitchTabsItem(
              isActive: selectedIndex == 1,
              onTap: () => setState(() {
                selectedIndex = 1;
              }),
              title: 'Hours',
            ),
            SwitchTabsItem(
              isActive: selectedIndex == 2,
              onTap: () => setState(() {
                selectedIndex = 2;
              }),
              title: 'Commits',
            ),
          ],
        ),
      ),
    );
  }
}
