import 'package:aerodrop/features/home/widget/choose_service_item_widget.dart';
import 'package:aerodrop/features/home/widget/send_package_address_widget.dart';
import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          SizedBox(height: 12.h),
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
              SizedBox(width: 13.w),
              Expanded(
                child: SendPackageAddressWidget(
                  label: 'Delivering To',
                  value: 'Keith Street 23',
                ),
              ),
            ],
          ),
          SizedBox(height: 23.h),
          Text('Choose Service', style: AppTextStyles.heading2),
          SizedBox(height: 20.h),
          ChooseServiceItemWidget(
            icon: Assets.svgs.small.svg(),
            size: 'Small size',
            sizeValue: '1-2 Kg',
            isBestDeal: true,
            price: 5,
            onSelected: (String value) {
              onContinue();
            },
          ),
          SizedBox(height: 20.h),

          ChooseServiceItemWidget(
            icon: Assets.svgs.medium.svg(),
            size: 'Medium size',
            sizeValue: '3-5 Kg',
            isBestDeal: false,
            price: 12,
            onSelected: (String value) {
              onContinue();
            },
          ),
          SizedBox(height: 20.h),
          ChooseServiceItemWidget(
            icon: Assets.svgs.large.svg(),
            size: 'Big size',
            sizeValue: '6-10 Kg',
            isBestDeal: false,
            price: 25,
            onSelected: (String value) {
              onContinue();
            },
          ),
        ],
      ),
    );
  }
}
