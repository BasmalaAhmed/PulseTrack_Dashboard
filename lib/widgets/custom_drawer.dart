import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_drawer_header.dart';
import 'package:pulse_track_dashboard/widgets/custom_fold_tile.dart';
import 'package:pulse_track_dashboard/widgets/custom_quota.dart';
import 'package:pulse_track_dashboard/widgets/drawer_item_list_view.dart';
import 'package:pulse_track_dashboard/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: Container(
        decoration: BoxDecoration(
          border: Border(right: BorderSide(color: colors.outline)),
        ),
        child: SafeArea(
          right: false,
          left: false,
          bottom: false,
          minimum: const EdgeInsets.only(top: 16),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDrawerHeader(
                  widget: Text(
                    'Enterprise Analytics',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.medium12Style.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                CustomFoldTile(),
                SizedBox(height: 20),
                Expanded(child: DrawerItemListView()),
                CustomQuota(),
                Divider(color: colors.outline, height: 24),
                UserInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
