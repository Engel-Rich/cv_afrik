import 'package:cv_afrik/core/modelkey.dart';
import 'package:cv_afrik/model/periode_model.dart';

class ProfessionnelRoute {
  String? entreprise;
  String? poste;
  String? description;
  PeriodeModel periode;
  List<String>? taches;
  String? id;
  String? cvId;

  ProfessionnelRoute({
    this.description,
    this.entreprise,
    required this.periode,
    this.poste,
    this.cvId,
    this.id,
    this.taches,
  });

  Map<String, dynamic> toMap() => {
        ProfessionKey.entreprie: entreprise ?? '',
        ProfessionKey.descriptions: description ?? '',
        ProfessionKey.periode: periode.toMap(),
        ProfessionKey.poste: poste ?? '',
        ProfessionKey.cvId: cvId ?? '',
        ProfessionKey.taches: taches ?? [],
        PeriodeModelKey.id: id ?? '',
      };

  factory ProfessionnelRoute.fromMap(data) => ProfessionnelRoute(
        periode: PeriodeModel.fromMap(data[ProfessionKey.periode]),
        description: data[ProfessionKey.descriptions],
        entreprise: data[ProfessionKey.entreprie],
        poste: data[ProfessionKey.poste],
        cvId: data[ProfessionKey.cvId],
        id: data[ProfessionKey.id],
        taches: List.from(data[ProfessionKey.taches]),
      );
}
