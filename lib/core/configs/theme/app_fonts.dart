import 'dart:ui';

import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppFont {
  static final regular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );
  static final medium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
  );

  static final semibold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.greyText,
  );
  // Regular
  static final regular_default = regular.copyWith(color: AppColors.dark);
  static final regular_default_10 = regular.copyWith(fontSize: 10);
  static final regular_default_12 = regular.copyWith(fontSize: 12, color: AppColors.secondaryGreen);
  static final regular_default_14 = regular.copyWith(fontSize: 14);
  static final regular_default_16 = regular.copyWith(fontSize: 16);
  // Semi
  static final semi_default = semibold.copyWith(color: AppColors.dark);
  static final semi_default_10 = semibold.copyWith(fontSize: 10);
  static final semi_default_12 = semibold.copyWith(fontSize: 12);
  static final semi_default_14 = semibold.copyWith(fontSize: 14);
  static final semi_default_16 = semibold.copyWith(fontSize: 16);
  static final semi_default_18 = semibold.copyWith(fontSize: 18);
  static final semi_default_24 = semibold.copyWith(fontSize: 24);
  static final semi_default_30 = semibold.copyWith(fontSize: 30);

  //Medium
  static final medium_default = medium.copyWith(color: AppColors.dark);
  static final medium_default_12 = medium.copyWith(fontSize: 12);
}
