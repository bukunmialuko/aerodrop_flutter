import 'package:aerodrop/features/home/widget/send_package_address_widget.dart';
import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChooseService extends StatelessWidget {
  final VoidCallback onContinue;
  final ScrollController controller;

  const ChooseService({
    super.key,
    required this.onContinue,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Assets.svgs.slider.svg()),
          Text(
            'Change Location',
            style: AppTextStyles.buttonText.copyWith(
              color: AppLightColors.primary,
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Expanded(
                child: SendPackageAddressWidget(
                  label: 'Pickup Location',
                  value: 'Carrol Avenue 64',
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: SendPackageAddressWidget(
                  label: 'Delivering To',
                  value: 'Keith Street 23',
                ),
              ),
            ],
          ),
          Text('Choose Service', style: AppTextStyles.heading2),
          SizedBox(height: 20.h),
          Row(
            children: [
              Assets.svgs.pickUp.svg(),
              SizedBox(width: 13.h),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Assets.svgs.deliveringTo.svg(),
              SizedBox(width: 13.h),
            ],
          ),
          SizedBox(height: 20.h),
          ElevatedButton(
            onPressed: () {
              context.pushNamed('home');
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
