import 'package:aerodrop/features/home/home_page.dart';
import 'package:aerodrop/features/home/widget/send_package_widget.dart';
import 'package:aerodrop/features/home/widget/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'choose_service_widget.dart';
import 'finding_drone_widget.dart';

class BottomFlowSheet extends StatefulWidget {
  const BottomFlowSheet({super.key});

  @override
  State<BottomFlowSheet> createState() => _BottomFlowSheetState();
}

class _BottomFlowSheetState extends State<BottomFlowSheet> {
  SheetStep step = SheetStep.sendPackage;
  final DraggableScrollableController sheetController =
      DraggableScrollableController();

  void goTo(SheetStep next) {
    setState(() => step = next);

    // Animate height per step
    final targetSize = switch (next) {
      SheetStep.sendPackage => 314 / 844,
      SheetStep.chooseService => 448 / 844,
      SheetStep.summary => 404 / 844,
      SheetStep.loading => 404 / 844,
    };

    sheetController.animateTo(
      targetSize,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: sheetController,
      minChildSize: 0.1,
      maxChildSize: 0.7,
      initialChildSize: 314 / 844,
      snap: true,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            switchInCurve: Curves.easeOut,
            switchOutCurve: Curves.easeIn,
            child: SingleChildScrollView(
              controller: scrollController,
              physics: NeverScrollableScrollPhysics(),
              child: _buildStep(step, scrollController),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStep(SheetStep step, ScrollController controller) {
    switch (step) {
      case SheetStep.sendPackage:
        return SendPackageWidget(
          key: const ValueKey('send'),
          onContinue: () => goTo(SheetStep.chooseService),
          controller: controller,
        );

      case SheetStep.chooseService:
        return ChooseService(
          key: const ValueKey('choose'),
          onContinue: () => goTo(SheetStep.summary),
          controller: controller,
        );

      case SheetStep.summary:
        return SummaryWidget(
          key: const ValueKey('summary'),
          onConfirm: () => goTo(SheetStep.loading),
        );

      case SheetStep.loading:
        return const FindingDroneWidget(key: ValueKey('loading'));
    }
  }
}
