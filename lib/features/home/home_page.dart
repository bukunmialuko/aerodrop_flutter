import 'package:aerodrop/features/onboarding/widget/send_package_address_widget.dart';
import 'package:aerodrop/generated/assets.gen.dart';
import 'package:aerodrop/res/app_light_colors.dart';
import 'package:aerodrop/res/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(51.509364, -0.128928),
              // Center the map over London, UK
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                // Bring your own tiles
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                // For demonstration only
                userAgentPackageName:
                    'com.example.aerodrop' /*'com.example.app'*/, // Add your app identifier
                // And many more recommended properties!
              ),
              RichAttributionWidget(
                // Include a stylish prebuilt attribution widget that meets all requirments
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () {}, // (external)
                  ),
                  // Also add images...
                ],
              ),
            ],
          ),
          SendPackage(),
        ],
      ),
    );
  }
}

class SendPackage extends StatelessWidget {
  const SendPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 314 / 844, // 15% of screen height
      minChildSize: 314 / 844,
      maxChildSize: 314 / 844,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 12.h),
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
                    style: AppTextStyles.buttonText.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ChooseService extends StatelessWidget {
  const ChooseService({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 314 / 844, // 15% of screen height
      minChildSize: 314 / 844,
      maxChildSize: 314 / 844,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 12.h),
                Center(child: Assets.svgs.slider.svg()),
                SizedBox(height: 14.h),
                Text('Send Package', style: AppTextStyles.heading2),
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
                    style: AppTextStyles.buttonText.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
