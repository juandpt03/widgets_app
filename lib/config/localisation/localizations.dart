import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_app/models/language_model.dart';
import 'package:widgets_app/models/locale_model.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  Map<dynamic, dynamic>? _localizedValues;
  String jsonContent = '';

  Future<AppLocalizations> load(Locale locale) async {
    jsonContent = await rootBundle
        .loadString("assets/locale/localization_${locale.languageCode}.json");
    _localizedValues = jsonDecode(jsonContent);

    return this;
  }

  String text(String key) {
    return _localizedValues![key] ?? "$key not found";
  }

  LocaleModel value() {
    return LocaleModel.fromJson(jsonDecode(jsonContent));
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => Languages.languages
      .map((e) => e.code)
      .toList()
      .contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load(locale);
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}
