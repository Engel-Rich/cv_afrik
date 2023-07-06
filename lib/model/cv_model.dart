import 'package:cv_afrik/core/modelkey.dart';
import 'package:cv_afrik/model/private_model.dart';
import 'package:cv_afrik/model/professionnel_route_model.dart';
import 'package:cv_afrik/model/profile_model.dart';
import 'package:cv_afrik/model/reference_model.dart';

import 'competence_model.dart';
import 'contact_model.dart';
import 'formation_model.dart';
import 'langage_model.dart';

class CvModel {
  String id;
  String? templateId;
  String? themId;
  ProfileModel profie;
  ContactModel? conctate;
  PrivetaModel? private;
  List<ProfessionnelRoute>? professionelRoute;
  List<LangageModel>? langues;
  List<ReferenceModel>? references;
  List<FormationModel>? formations;
  List<CompetenceModel>? competances;
  List<String>? qualites;
  List<String>? loisires;

  CvModel({
    required this.profie,
    this.competances,
    this.conctate,
    this.formations,
    required this.id,
    this.langues,
    this.loisires,
    this.private,
    this.professionelRoute,
    this.qualites,
    this.references,
    this.templateId,
    this.themId,
  });

  Map<String, dynamic> toMap() => {
        // CVKey.themeId:themId,  
        CVKey.templeteId: templateId,
        CVKey.references: references?.map((e) => e.toMap()).toList() ?? [],
        CVKey.preffessionelRoutes:
            professionelRoute?.map((e) => e.toMap()).toList() ?? [],
        CVKey.private: private?.toMap(),
        CVKey.qualites: qualites,
        CVKey.loisires: loisires,
        CVKey.langues: langues?.map((e) => e.toMap()).toList() ?? [],
        CVKey.id: id,
        CVKey.formations: formations?.map((e) => e.toMap()).toList() ?? [],
        CVKey.contacte: conctate?.toMap(),
        CVKey.competences: competances?.map((e) => e.toMpa()).toList() ?? [],
        CVKey.profile: profie.toMap(),
      };

  factory CvModel.fromMap(data) => CvModel(
        // themId: ,
        competances: List.generate(
          List.from(data[CVKey.competences]).length,
          (index) => CompetenceModel.fromMap(
              List.from(data[CVKey.competences])[index]),
        ),
        conctate: ContactModel.fromMap(data[CVKey.contacte]),
        formations: List.generate(
          List.from(data[CVKey.formations]).length,
          (index) =>
              FormationModel.fromMap(List.from(data[CVKey.formations])[index]),
        ),
        langues: List.generate(
          List.from(data[CVKey.langues]).length,
          (index) =>
              LangageModel.fromMap(List.from(data[CVKey.langues])[index]),
        ),
        private: PrivetaModel.froMap(data[CVKey.private]),
        profie: ProfileModel.fromMap(data[CVKey.profile]),
        id: data[CVKey.id],
        templateId: data[CVKey.templeteId],
        references: List.generate(
          List.from(data[CVKey.references]).length,
          (index) =>
              ReferenceModel.fromMap(List.from(data[CVKey.references])[index]),
        ),
        qualites: List.from(data[CVKey.qualites]),
        loisires: List.from(data[CVKey.loisires]),
        professionelRoute: List.generate(
          List.from(data[CVKey.preffessionelRoutes]).length,
          (index) => ProfessionnelRoute.fromMap(
              List.from(data[CVKey.preffessionelRoutes])[index]),
        ),
      );
}
