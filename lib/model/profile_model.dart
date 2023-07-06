import 'package:cv_afrik/core/modelkey.dart';

class ProfileModel {
  String name;
  String? title;
  String? resume;
  String? photoUrl;
  String? id;
  String? cvId;

  ProfileModel({
    this.id,
    this.cvId,
    this.title,
    required this.name,
    this.photoUrl,
    this.resume,
  });

  Map<String, dynamic> toMap() => {
        ProfileKey.cvId: cvId ?? '',
        ProfileKey.id: id ?? '',
        ProfileKey.photoUrl: photoUrl ?? '',
        ProfileKey.resume: resume ?? '',
        ProfileKey.title: title ?? '',
        ProfileKey.userName: name,
      };

  factory ProfileModel.fromMap(data) => ProfileModel(
        name: data[ProfileKey.userName],
        cvId: data[ProfileKey.cvId],
        id: data[ProfileKey.id],
        photoUrl: data[ProfileKey.photoUrl],
        resume: data[ProfileKey.resume],
        title: data[ProfileKey.title],
      );
}
