import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindingDroneWidget extends StatelessWidget {
  const FindingDroneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Assets.svgs.drone.svg()),
          SizedBox(height: 26.h),
          Text(
            'Finding nearby available drone',
            style: AppTextStyles.buttonText.copyWith(
              color: AppLightColors.tertiary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          CustomProgressBar(progress: 0.2),
        ],
      ),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double progress;

  const CustomProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 14,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppLightColors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                width: constraints.maxWidth * progress,
                decoration: BoxDecoration(
                  color: AppLightColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
