class LanguageEntity {
  final String code;
  final String value;

  const LanguageEntity({
    required this.code,
    required this.value,
  });
}

class Languages {
  const Languages._();

  // Languages supported
  static const languages = [
    LanguageEntity(code: 'en', value: 'IN'),
    LanguageEntity(code: 'es', value: 'ES'),
  ];
}
