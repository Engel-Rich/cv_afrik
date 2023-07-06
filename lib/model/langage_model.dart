import '../core/modelkey.dart';

class LangageModel {
  String? id;
  String title;
  String? icone;
  String code;
  double skiil;
  String? cvId;

  LangageModel({
    required this.code,
    required this.title,
    this.icone,
    this.id,
    this.cvId,
    required this.skiil,
  });

  Map<String, dynamic> toMap() => {
        LangageModelKey.title: title,
        LangageModelKey.icon: icone ?? '',
        LangageModelKey.code: code,
        LangageModelKey.skill: skiil,
        LangageModelKey.id: id ?? '',
        LangageModelKey.cvId: cvId ?? ''
      };

  factory LangageModel.fromMap(Map<String, dynamic> data) => LangageModel(
        code: data[LangageModelKey.code],
        title: data[LangageModelKey.title],
        icone: data[LangageModelKey.icon],
        skiil: data[LangageModelKey.skill],
        id: data[LangageModelKey.id],
        cvId: data[LangageModelKey.cvId],
      );
}
