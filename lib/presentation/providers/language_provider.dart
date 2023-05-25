import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/models/language_model.dart';

final locale =
    StateProvider<LanguageEntity>((selectedLang) => const LanguageEntity(
          code: "en",
          value: "IN",
          text: "English",
        ));

final localeProvider = StateNotifierProvider<LangNotifier, LanguageEntity>(
    (ref) => LangNotifier(const LanguageEntity(
          code: "en",
          value: "IN",
          text: "English",
        )));

class LangNotifier extends StateNotifier<LanguageEntity> {
  LangNotifier(super.state);

  void updateLang(LanguageEntity entity) {
    state = entity;
  }
}
