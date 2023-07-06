import 'package:cv_afrik/core/modelkey.dart';

class PrivetaModel {
  String? id;
  String? nationnalite;
  String? codeNationnalite;
  bool? mariage;
  int? nombreEnfant;
  DateTime dateNnaissance;
  String? cvId;

  PrivetaModel({
    this.codeNationnalite,
    this.cvId,
    required this.dateNnaissance,
    this.id,
    this.mariage,
    this.nombreEnfant,
    this.nationnalite,
  });

  Map<String, dynamic> toMap() => {
        PrivateInfoKey.cvId: cvId ?? '',
        PrivateInfoKey.dateNaissance: dateNnaissance,
        PrivateInfoKey.mariage: mariage ?? false,
        PrivateInfoKey.nationalite: nationnalite ?? 'Camerounaise',
        PrivateInfoKey.nationaliteCode: codeNationnalite ?? 'CM',
        PrivateInfoKey.id: id ?? '',
        PrivateInfoKey.nombreEnfants: nombreEnfant ?? 0,
      };

  factory PrivetaModel.froMap(data) => PrivetaModel(
      codeNationnalite: data[PrivateInfoKey.nationaliteCode],
      cvId: data[PrivateInfoKey.cvId],
      dateNnaissance: data[PrivateInfoKey.dateNaissance],
      id: data[PrivateInfoKey.id],
      mariage: data[PrivateInfoKey.mariage],
      nombreEnfant: data[PrivateInfoKey.nombreEnfants],
      nationnalite: data[PrivateInfoKey.nationalite]);
}
