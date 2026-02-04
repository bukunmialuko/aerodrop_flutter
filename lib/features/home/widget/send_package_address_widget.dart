import 'package:aerodrop/res/app_light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendPackageAddressWidget extends StatelessWidget {
  final Widget? icon;
  final String label;
  final String value;

  const SendPackageAddressWidget({
    super.key,
    this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) ...[icon!, SizedBox(width: 13.h)],
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
            decoration: BoxDecoration(
              border: BoxBorder.all(color: AppLightColors.grey),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppLightColors.tertiary,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppLightColors.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
