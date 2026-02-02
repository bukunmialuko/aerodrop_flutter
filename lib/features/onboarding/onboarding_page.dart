import 'package:aerodrop/features/onboarding/model/ob_model.dart';
import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Assets.onboarding.background.svg(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 454.h,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 454.h,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 30.h,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Assets.onboarding.aerodrop.svg(),
              ),
            ),
          ),
          PageView.builder(
            itemCount: obModelList.length,
            controller: _controller,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 454.h,
                    padding: EdgeInsets.only(bottom: 38.h),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: obModelList[index].image,
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      obModelList[index].title,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.heading1,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      obModelList[index].subTitle,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.heading3,
                    ),
                  ),
                ],
              );
            },
          ),

          Positioned(
            bottom: 26.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    obModelList.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      height: 8.h,
                      width: _currentPage == index ? 40.w : 12.w,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? const Color(0xFF7B61FF)
                            : const Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 38.h),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Visibility(
                      visible: _currentPage == obModelList.length - 1,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: ElevatedButton(
                        onPressed: () {
                          context.goNamed('/home');
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
                          style: AppTextStyles.buttonText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
