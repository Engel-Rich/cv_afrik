import 'package:cv_afrik/core/localization_controller.dart';

String tranduire(context, key) =>
    LocalizationService.of(context).translate(key) ?? "";
