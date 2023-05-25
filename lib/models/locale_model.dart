class LocaleModel {
  String? goodMorning;
  String? howAreYou;
  String? welcome;

  LocaleModel({this.goodMorning, this.howAreYou, this.welcome});

  LocaleModel.fromJson(Map<String, dynamic> json) {
    goodMorning = json['good_morning'];
    howAreYou = json['how_are_you'];
    welcome = json['welcome'];
  }
}
