import 'package:aerodrop/generated/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ObModel {
  final SvgPicture image;
  final String title;
  final String subTitle;

  ObModel({required this.image, required this.title, required this.subTitle});
}

final List<ObModel> obModelList = [
  ObModel(
    image: Assets.onboarding.ob1.svg(),
    title: 'Elevate your Deliveries',
    subTitle:
        'Say goodbye to long wait times and hello to same-day deliveries.',
  ),
  ObModel(
    image: Assets.onboarding.ob2.svg(),
    title: 'Precision Route Planning',
    subTitle:
        'Our intelligent route planning software guarantees the optimal path for each delivery.',
  ),
  ObModel(
    image: Assets.onboarding.ob3.svg(),
    title: 'Environmental Responsibility',
    subTitle:
        'Our intelligent route planning software guarantees the optimal path for each delivery.',
  ),
];
