import 'package:cv_afrik/core/modelkey.dart';

class ReferenceModel {
  String? entreprise;
  String? phoneNumber;
  String? email;
  String? id;
  String? cvId;

  ReferenceModel({
    this.email,
    this.entreprise,
    this.id,
    this.cvId,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() => {
        ReferencesKey.cvId: cvId ?? '',
        ReferencesKey.email: email ?? '',
        ReferencesKey.entreprie: entreprise ?? '',
        ReferencesKey.id: id ?? '',
        ReferencesKey.phoneNumberReference: phoneNumber ?? '',
      };

  factory ReferenceModel.fromMap(data) => ReferenceModel(
        entreprise: data[ReferencesKey.entreprie],
        cvId: data[ReferencesKey.cvId],
        phoneNumber: data[ReferencesKey.phoneNumberReference],
        id: data[ReferencesKey.id],
        email: data[ReferencesKey.email],
      );
}
