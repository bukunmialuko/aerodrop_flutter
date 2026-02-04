import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseServiceItemWidget extends StatelessWidget {
  const ChooseServiceItemWidget({
    super.key,
    required this.icon,
    required this.size,
    required this.sizeValue,
    this.isBestDeal,
    required this.price,
    required this.onSelected,
  });

  final Widget icon;
  final String size;
  final String sizeValue;
  final bool? isBestDeal;
  final int price;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(size);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.5.h),
        decoration: BoxDecoration(
          border: BoxBorder.all(color: AppLightColors.grey),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Assets.svgs.small.svg(),
            SizedBox(width: 22.h),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            size,
                            style: AppTextStyles.buttonText.copyWith(
                              color: AppLightColors.tertiary,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            sizeValue,
                            style: AppTextStyles.buttonText.copyWith(
                              color: AppLightColors.secondary,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isBestDeal != null && isBestDeal == true) ...[
                          Text(
                            "Best Deal 🔥",
                            style: AppTextStyles.buttonText.copyWith(
                              color: Color(0xffFF6B31),
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                        Text(
                          "\$ $price",
                          style: AppTextStyles.buttonText.copyWith(
                            color: AppLightColors.primary,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
