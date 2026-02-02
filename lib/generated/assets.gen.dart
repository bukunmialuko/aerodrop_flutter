// dart format width=120

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsOnboardingGen {
  const $AssetsOnboardingGen();

  /// File path: assets/onboarding/aerodrop.svg
  SvgGenImage get aerodrop => const SvgGenImage('assets/onboarding/aerodrop.svg');

  /// File path: assets/onboarding/background.svg
  SvgGenImage get background => const SvgGenImage('assets/onboarding/background.svg');

  /// File path: assets/onboarding/ob_1.svg
  SvgGenImage get ob1 => const SvgGenImage('assets/onboarding/ob_1.svg');

  /// File path: assets/onboarding/ob_2.svg
  SvgGenImage get ob2 => const SvgGenImage('assets/onboarding/ob_2.svg');

  /// File path: assets/onboarding/ob_3.svg
  SvgGenImage get ob3 => const SvgGenImage('assets/onboarding/ob_3.svg');

  /// List of all assets
  List<SvgGenImage> get values => [aerodrop, background, ob1, ob2, ob3];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/delivering_to.svg
  SvgGenImage get deliveringTo => const SvgGenImage('assets/svgs/delivering_to.svg');

  /// File path: assets/svgs/drone.svg
  SvgGenImage get drone => const SvgGenImage('assets/svgs/drone.svg');

  /// File path: assets/svgs/large.svg
  SvgGenImage get large => const SvgGenImage('assets/svgs/large.svg');

  /// File path: assets/svgs/medium.svg
  SvgGenImage get medium => const SvgGenImage('assets/svgs/medium.svg');

  /// File path: assets/svgs/pick_up.svg
  SvgGenImage get pickUp => const SvgGenImage('assets/svgs/pick_up.svg');

  /// File path: assets/svgs/small.svg
  SvgGenImage get small => const SvgGenImage('assets/svgs/small.svg');

  /// List of all assets
  List<SvgGenImage> get values => [deliveringTo, drone, large, medium, pickUp, small];
}

class Assets {
  const Assets._();

  static const $AssetsOnboardingGen onboarding = $AssetsOnboardingGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
