import 'package:cv_afrik/core/modelkey.dart';
import 'package:cv_afrik/model/periode_model.dart';

class FormationModel {
  PeriodeModel periode;
  String? id;
  String? etablissement;
  String? description;
  String attestation;
  String? cvId;

  FormationModel({
    this.id,
    this.etablissement,
    this.description,
    this.cvId,
    required this.periode,
    required this.attestation,
  });

  Map<String, dynamic> toMap() => {
        FormationKey.id: id ?? '',
        FormationKey.attestation: attestation,
        FormationKey.descriptionsFormation: description ?? '',
        FormationKey.cvId: cvId ?? '',
        FormationKey.tetablissement: etablissement ?? '',
        FormationKey.periodeFormation: periode.toMap(),
      };

  factory FormationModel.fromMap(data) => FormationModel(
        periode: PeriodeModel.fromMap(data[FormationKey.periodeFormation]),
        attestation: data[FormationKey.attestation],
        id: data[FormationKey.id],
        etablissement: data[FormationKey.tetablissement],
        description: data[FormationKey.descriptionsFormation],
        cvId: data[FormationKey.cvId],
      );
}
