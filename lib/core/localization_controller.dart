import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class LocalizationService {
  late Locale locale;
  late Locale selectedlocale;

  late Map<String, dynamic> _langagesMap;

  LocalizationService({required this.locale}) {
    selectedlocale = locale;
  }

  static LocalizationService of(BuildContext context) =>
      Localizations.of(context, LocalizationService);

  Future<void> loadLangauge() async {
    final jsonsString = await rootBundle
        .loadString('langs/${selectedlocale.languageCode}.json');
    final Map<String, dynamic> jsonMap = jsonDecode(jsonsString);
    _langagesMap = jsonMap.map(
      (key, value) => MapEntry(key, value.toString()),
    );
  }

  String? translate(key) => _langagesMap[key];

// l'ensembles des langues suporté par l'APK
  static const supportedLangages = [
    Locale.fromSubtags(languageCode: 'fr', countryCode: 'FR'),
    Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
    Locale.fromSubtags(languageCode: 'de', countryCode: 'DE'),
    Locale.fromSubtags(languageCode: 'es', countryCode: 'ES'),
    Locale.fromSubtags(languageCode: 'zn', countryCode: 'CHN'),
    Locale.fromSubtags(languageCode: 'ar'),
    Locale.fromSubtags(languageCode: 'en', countryCode: 'EN'),
    Locale.fromSubtags(languageCode: 'fr', countryCode: 'CA'),
    Locale.fromSubtags(languageCode: 'en', countryCode: 'CA'),
    Locale.fromSubtags(languageCode: 'fr', countryCode: 'CM'),
  ];

//  ce code permet de verifier si la langue du telephone est supporté par l'APP

  static Locale? localeResolutionCallBack(
      Locale? localefn, Iterable<Locale>? supportedLocal) {
    if (localefn != null && supportedLocal != null) {
      return supportedLocal.firstWhere(
        (element) => element.languageCode == localefn.languageCode,
        orElse: () => supportedLocal.first,
      );
    }
    return null;
  }

  //delegates
  static const LocalizationsDelegate<LocalizationService> delegate =
      _LocalizarionServiceDelegate();

  static const locaizationDelegate = [
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    delegate
  ];
}

const List<String> listLang = ['fr', 'en', 'de', 'es', 'ar', 'zn'];
// Custum delegate

class _LocalizarionServiceDelegate
    extends LocalizationsDelegate<LocalizationService> {
  const _LocalizarionServiceDelegate();

  @override
  bool isSupported(Locale locale) {
    return listLang.contains(locale.languageCode);
  }

  @override
  Future<LocalizationService> load(Locale locale) async {
    LocalizationService service = LocalizationService(locale: locale);
    await service.loadLangauge();
    return service;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<LocalizationService> old) {
    return false;
  }
}
