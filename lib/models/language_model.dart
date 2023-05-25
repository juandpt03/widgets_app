class LanguageEntity {
  final String code;
  final String value;
  final String? text;

  const LanguageEntity({required this.code, required this.value, this.text});
}

class Languages {
  const Languages._();

  // Languages supported
  static const languages = [
    LanguageEntity(code: 'en', value: 'IN', text: "English"),
    LanguageEntity(code: 'es', value: 'ES', text: "Spanish"),
  ];
}
