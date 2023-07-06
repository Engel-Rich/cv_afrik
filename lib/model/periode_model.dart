import 'package:cv_afrik/core/modelkey.dart';

class PeriodeModel {
  DateTime start;
  DateTime? end;
  double? isRunning;

  PeriodeModel({required this.start, this.isRunning, this.end})
      : assert(end == null || isRunning == null, "");

  Map<String, dynamic> toMap() => {
        PeriodeModelKey.dateEnd: end,
        PeriodeModelKey.dateStart: start,
        PeriodeModelKey.isRunning: isRunning,
      };

  factory PeriodeModel.fromMap(Map<String, dynamic> data) => PeriodeModel(
        start: data[PeriodeModelKey.dateStart],
        end: data[PeriodeModelKey.dateEnd],
        isRunning: data[PeriodeModelKey.isRunning],
      );
}
