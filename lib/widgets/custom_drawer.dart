import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
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
    return Scaffold(
      backgroundColor: Color(0XFF131924),
      body: Container(
        decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: Color(0XFF232B3B))),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDrawerHeader(
                widget: Text(
                  'Enterprise Analytics',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.medium12Style.copyWith(
                    color: AppColors.kGrey94Color,
                  ),
                ),
              ),
              SizedBox(height: 14),
              CustomFoldTile(),
              SizedBox(height: 20),
              Expanded(child: DrawerItemListView()),
              CustomQuota(),
              Divider(color: Color(0XFF232B3B), height: 24),
              UserInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
