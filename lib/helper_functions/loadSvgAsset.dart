import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

loadSvgAsset(
    {required String path, double? width, double? height, Color? color}) {
  return SvgPicture.asset(
    path,
    color: color,
    //?? Colors.black ,

    width: width,
    height: height,
  );
}
