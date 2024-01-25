import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:flutter/material.dart';

TextStyle appTextStyle(
        {double? fontSize,
        Color? color,
        TextDecoration? decoration,
        String? fontfamily,
        TextBaseline? textBaseline,
        FontWeight? fontWeight,
        TextOverflow? overflow}) =>
    TextStyle(
       
        decoration: decoration,
        fontSize: fontSize ?? 12,
        color: color ?? AppColors.black,
        textBaseline: textBaseline,
        fontWeight: fontWeight ?? FontWeight.w600);
