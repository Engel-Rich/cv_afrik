import 'package:cv_afrik/core/localization_controller.dart';
import 'package:flutter/material.dart';

String tranduire(context, key) =>
    LocalizationService.of(context).translate(key) ?? "";
String assets(String image, {String? sub}) =>
    sub == null ? 'assets/$image' : 'assets/$sub/$image';
Size taille(BuildContext context) => MediaQuery.sizeOf(context);

SizedBox spacerheight(taille) =>
    SizedBox(height: double.parse(taille.toString()));
SizedBox spacerwidth(taille) =>
    SizedBox(width: double.parse(taille.toString()));
