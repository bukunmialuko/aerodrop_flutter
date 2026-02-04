import 'package:aerodrop/features/home/widget/send_package_address_widget.dart';
import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendPackageWidget extends StatelessWidget {
  final VoidCallback onContinue;
  final ScrollController controller;
  const SendPackageWidget({
    super.key,
    required this.onContinue,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Assets.svgs.slider.svg()),
          SizedBox(height: 14.h),
          Text('Send Package', style: AppTextStyles.heading2),
          SizedBox(height: 20.h),
          SendPackageAddressWidget(
            icon: Assets.svgs.pickUp.svg(),
            label: 'Pickup Location',
            value: 'Carrol Avenue 64',
          ),
          SizedBox(height: 20.h),
          SendPackageAddressWidget(
            icon: Assets.svgs.deliveringTo.svg(),
            label: 'Delivering To',
            value: 'Keith Street 23',
          ),
          SizedBox(height: 20.h),
          ElevatedButton(
            onPressed: () {
              onContinue();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppLightColors.primary,
              minimumSize: Size(double.infinity, 56.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              "Get Started",
              style: AppTextStyles.buttonText.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
