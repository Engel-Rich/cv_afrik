import 'package:cv_afrik/core/modelkey.dart';

class PeriodeModel {
  DateTime start;
  DateTime? end;
  bool? isRunning;

  PeriodeModel({required this.start, this.isRunning, this.end})
      : assert(end == null || isRunning == null, "");

  Map<String, dynamic> toMap() => {
        PeriodeModelKey.dateEnd: end?.toIso8601String(),
        PeriodeModelKey.dateStart: start.toIso8601String(),
        PeriodeModelKey.isRunning: isRunning,
      };

  factory PeriodeModel.fromMap(Map<String, dynamic> data) => PeriodeModel(
        start: DateTime.parse(data[PeriodeModelKey.dateStart]),
        end: (data[PeriodeModelKey.dateEnd] as String).trim().isEmpty
            ? null
            : DateTime.parse(data[PeriodeModelKey.dateEnd]),
        isRunning: data[PeriodeModelKey.isRunning],
      );
}
