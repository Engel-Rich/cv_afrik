class LangageModelKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String code = 'code';
  static String icon = 'icone';
  static String skill = 'skill';
  static String title = 'tile';
}

class PeriodeModelKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String dateStart = 'date_start';
  static String dateEnd = 'date_end';
  static String isRunning = 'is_running';
}

class ProfessionKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String entreprie = 'entreprise';
  static String poste = 'poste';
  static String periode = 'periode';
  static String taches = 'taches';
  static String descriptions = 'descriptions';
}

class ContactesKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String userEmail = 'user_email';
  static String userTel1 = 'user_tel1';
  static String userTel2 = 'user_tel2';
  static String linkId = 'linkId';
  static String twiter = 'twiter';
  static String website = 'website';
  static String adresse = 'adresse';
}

class ReferencesKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String entreprie = 'entreprise_reference';
  static String email = 'email_reference';
  static String phoneNumberReference = 'phone_reference';
}

class PrivateInfoKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String dateNaissance = 'date_naissance';
  static String nationalite = 'nationnalité';
  static String nationaliteCode = 'nationalite_code';
  static String mariage = 'mariage';
  static String nombreEnfants = 'nombre_enfants';
}

class CompetencesKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String titreCompetence = 'titire_competence';
  static String valeursCompetence = 'valeur_competence';
  static String iconeCompetence = 'icone_competence';
}

class FormationKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String attestation = 'attestation';
  static String periodeFormation = 'periode_formation';
  static String tetablissement = 'etablisement_formation';
  static String descriptionsFormation = 'descriptions_formation';
}

class ProfileKey {
  static String id = 'id';
  static String cvId = 'cv_id';
  static String userName = 'userName';
  static String photoUrl = 'photo_url';
  static String title = 'user_profession';
  static String resume = 'resume';
}

class CVKey {
  static String id = 'id';
  static String profile = 'profile';
  static String langues = 'langues';
  static String contacte = 'contact';
  static String private = 'private';
  static String preffessionelRoutes = 'professionel_routes';
  static String formations = 'formations';
  static String competences = 'competences';
  static String references = 'references';
  static String qualites = 'qualites';
  static String loisires = 'loisires';
  static String themeId = 'theme_id';
  static String templeteId = 'template_id';
}
