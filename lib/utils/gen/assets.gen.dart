/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsGen {
  const $AssetsGen();

  $AssetsIconsGen get icons => const $AssetsIconsGen();

  $AssetsImagesGen get images => const $AssetsImagesGen();
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: Assets/icons/Union.svg
  String get home => 'assets/bottom_app_bar_svg_images/home_icon.svg';

  /// File path: Assets/icons/groups.svg
  String get favourites =>
      'assets/bottom_app_bar_svg_images/favourites_icon.svg';

  String get account => "assets/bottom_app_bar_svg_images/account_icon.svg";

  String get strategies =>
      "assets/bottom_app_bar_svg_images/strategies.svg";

  /// File path: Assets/icons/home.svg

  String get problem => 'Assets/icons/problem.svg';

  /// File path: Assets/icons/messages.svg
  String get messages => 'Assets/icons/messages.svg';

  String get galleryIcon => "Assets/icons/gallery_icon.svg";

  String get postApproval => "Assets/icons/post_approval.svg";

  /// File path: Assets/icons/notification.svg
  String get notification => 'Assets/icons/notification.svg';

  String get write => "Assets/icons/write.svg";

  /// File path: Assets/icons/profile.svg
  String get profile => 'Assets/icons/profile.svg';

  String get communities => 'Assets/icons/community.svg';

  String get add_friends => 'Assets/icons/add_friend.svg';

  String get gallery => 'Assets/icons/gallery.svg';

  String get heartIcon => 'Assets/icons/heart_filled.svg';

  String get commentIcon => 'Assets/icons/comment_icon.svg';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: Assets/images/Gaya Logo.png
  AssetGenImage get gayaLogoPng =>
      const AssetGenImage('Assets/images/Gaya Logo.png');

  String get communityLogo => 'Assets/images/community_logo.png';

  /// File path: Assets/images/Gaya Logo.svg
  String get gayaLogoSvg => 'Assets/images/Gaya Logo.svg';

  /// File path: Assets/images/Gaya_Logo.png
  AssetGenImage get gayaLogo =>
      const AssetGenImage('Assets/images/Gaya_Logo.png');

  /// File path: Assets/images/Logo.svg
  String get logo => 'Assets/images/Logo.svg';

  /// File path: Assets/images/flowers.svg
  String get flowers => 'Assets/images/flowers.svg';

  /// File path: Assets/images/hearts.svg
  String get hearts => 'Assets/images/hearts.svg';

  String get messageImage => 'Assets/images/message.png';

  String get notificationImage => 'Assets/images/notificationImage.png';

  String get flowerImage => 'Assets/images/flower1.svg';

  String get flowerImagePng => 'Assets/images/flower1.png';

  //post
  String get post => 'Assets/images/Post.svg';

  //comment
  String get reply => 'Assets/images/Reply.svg';

  String get userDefault => "Assets/images/user.png";
}

class Assets {
  Assets._();

  static const $AssetsGen assets = $AssetsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
/*
Assets.assets.images.messageImage,
Assets.assets.images.gayaLogoPng.path
Assets.assets.icons.groups
*/
