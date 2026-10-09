import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';

abstract class AppStyles {
  static TextStyle semibold10Style = TextStyle(
    color: AppColors.kGrey94Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  static TextStyle regular11Style = TextStyle(
    color: AppColors.kGrey94Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 11,
  );

  static TextStyle medium11Style = TextStyle(
    color: AppColors.kGrey47Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );

  static TextStyle semibold11Style = TextStyle(
    color: AppColors.kSuccessColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 11,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bold11Style = TextStyle(
    color: AppColors.kTertiaryColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );

  static TextStyle regular12Style = TextStyle(
    color: AppColors.kGrey64Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 12,
  );

  static TextStyle medium12Style = TextStyle(
    color: AppColors.kGrey47Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle semibold12Style = TextStyle(
    color: AppColors.kPrimaryColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bold12Style = TextStyle(
    color: AppColors.kPrimaryColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle regular14Style = TextStyle(
    color: AppColors.kGrey64Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 14,
  );

  static TextStyle medium14Style = TextStyle(
    color: AppColors.kGrey47Color,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold14Style = TextStyle(
    color: AppColors.kPrimaryColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bold16Style = TextStyle(
    color: AppColors.kPrimaryColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bold24Style = TextStyle(
    color: AppColors.kPrimaryColor,
    fontFamily: 'Plus_Jakarta_Sans',
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
