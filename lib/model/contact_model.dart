import 'package:cv_afrik/core/modelkey.dart';

class ContactModel {
  String? email;
  String phoneNuber1;
  String? phoneNuber2;
  String? linkId;
  String? twitter;
  String? website;
  String? cvId;
  String? adresse;
  // String? id,

  ContactModel({
    this.email,
    this.adresse,
    this.linkId,
    this.cvId,
    required this.phoneNuber1,
    this.phoneNuber2,
    this.twitter,
    this.website,
  });

  Map<String, dynamic> toMap() => {
        ContactesKey.adresse: adresse ?? '',
        ContactesKey.cvId: cvId ?? '',
        ContactesKey.linkId: linkId ?? '',
        ContactesKey.twiter: twitter ?? '',
        ContactesKey.userEmail: email ?? '',
        ContactesKey.website: website ?? '',
        ContactesKey.userTel1: phoneNuber1,
        ContactesKey.userTel2: phoneNuber2 ?? '',
      };

  factory ContactModel.fromMap(data) => ContactModel(
        email: data[ContactesKey.userEmail],
        adresse: data[ContactesKey.adresse],
        linkId: data[ContactesKey.linkId],
        cvId: data[ContactesKey.cvId],
        phoneNuber1: data[ContactesKey.userTel1],
        phoneNuber2: data[ContactesKey.userTel2],
        twitter: data[ContactesKey.twiter],
        website: data[ContactesKey.website],
      );
}
