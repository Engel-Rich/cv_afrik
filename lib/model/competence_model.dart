import 'package:cv_afrik/core/modelkey.dart';

class CompetenceModel {
  String? id;
  String titre;
  String? icone;
  double valeur;
  String? cvId;

  CompetenceModel({
    required this.titre,
    required this.valeur,
    this.id,
    this.cvId,
    this.icone,
  });

  Map<String, dynamic> toMpa() => {
        CompetencesKey.cvId: cvId ?? '',
        CompetencesKey.iconeCompetence: icone ?? '',
        CompetencesKey.titreCompetence: titre,
        CompetencesKey.valeursCompetence: valeur,
        CompetencesKey.id: id ?? '',
      };

  factory CompetenceModel.fromMap(Map<String, dynamic> data) => CompetenceModel(
        titre: data[CompetencesKey.titreCompetence],
        valeur: data[CompetencesKey.valeursCompetence],
        id: data[CompetencesKey.id],
        cvId: data[CompetencesKey.cvId],
        icone: data[CompetencesKey.iconeCompetence],
      );
}
