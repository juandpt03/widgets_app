// To parse this JSON data, do
//
//     final localeModel = localeModelFromJson(jsonString);

import 'dart:convert';

LocaleModel localeModelFromJson(String str) =>
    LocaleModel.fromJson(json.decode(str));

String localeModelToJson(LocaleModel data) => json.encode(data.toJson());

class LocaleModel {
  String buttons;
  String subButtons;
  String cards;
  String subCards;
  String progressIndicators;
  String subProInd;
  String snackbarsDialogs;
  String subSnackDia;
  String animContain;
  String subAnimCont;
  String uiContTiles;
  String subUiContTiles;
  String appIntro;
  String appIntroSub;
  String infiniteScroll;
  String subInfiScroll;
  String counterSceen;
  String subCounter;
  String changeTheme;
  String changeApptheme;
  String introTit1;
  String introSub1;
  String introTit2;
  String introSub2;
  String introTit3;
  String introSub3;
  String skip;
  String start;
  String count;
  String checked;
  String thisColor;
  String additionalControls;
  String transportVehicles;
  String byCar;
  String travelByCar;
  String byPlane;
  String travelByPlane;
  String byBoat;
  String travelByBoat;
  String bySubmarine;
  String travelBySubm;
  String breakfast;
  String lunch;
  String dinner;

  LocaleModel({
    required this.buttons,
    required this.subButtons,
    required this.cards,
    required this.subCards,
    required this.progressIndicators,
    required this.subProInd,
    required this.snackbarsDialogs,
    required this.subSnackDia,
    required this.animContain,
    required this.subAnimCont,
    required this.uiContTiles,
    required this.subUiContTiles,
    required this.appIntro,
    required this.appIntroSub,
    required this.infiniteScroll,
    required this.subInfiScroll,
    required this.counterSceen,
    required this.subCounter,
    required this.changeTheme,
    required this.changeApptheme,
    required this.introTit1,
    required this.introSub1,
    required this.introTit2,
    required this.introSub2,
    required this.introTit3,
    required this.introSub3,
    required this.skip,
    required this.start,
    required this.count,
    required this.checked,
    required this.thisColor,
    required this.additionalControls,
    required this.transportVehicles,
    required this.byCar,
    required this.travelByCar,
    required this.byPlane,
    required this.travelByPlane,
    required this.byBoat,
    required this.travelByBoat,
    required this.bySubmarine,
    required this.travelBySubm,
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  });

  factory LocaleModel.fromJson(Map<String, dynamic> json) => LocaleModel(
        buttons: json["buttons"],
        subButtons: json["sub_buttons"],
        cards: json["cards"],
        subCards: json["sub_cards"],
        progressIndicators: json["progress_indicators"],
        subProInd: json["sub_proInd"],
        snackbarsDialogs: json["snackbars_dialogs"],
        subSnackDia: json["sub_snack_dia"],
        animContain: json["anim_contain"],
        subAnimCont: json["sub_anim_cont"],
        uiContTiles: json["ui_cont_tiles"],
        subUiContTiles: json["sub_ui_cont_tiles"],
        appIntro: json["app_intro"],
        appIntroSub: json["app_intro_sub"],
        infiniteScroll: json["infinite_scroll"],
        subInfiScroll: json["sub_infi_scroll"],
        counterSceen: json["counter_sceen"],
        subCounter: json["sub_counter"],
        changeTheme: json["change_theme"],
        changeApptheme: json["change_apptheme"],
        introTit1: json["intro_tit_1"],
        introSub1: json["intro_sub_1"],
        introTit2: json["intro_tit_2"],
        introSub2: json["intro_sub_2"],
        introTit3: json["intro_tit_3"],
        introSub3: json["intro_sub_3"],
        skip: json["skip"],
        start: json["start"],
        count: json["count"],
        checked: json["checked"],
        thisColor: json["this_color"],
        additionalControls: json["additional_controls"],
        transportVehicles: json["transport_vehicles"],
        byCar: json["by_car"],
        travelByCar: json["travel_by_car"],
        byPlane: json["by plane"],
        travelByPlane: json["travel_by_plane"],
        byBoat: json["by boat"],
        travelByBoat: json["travel_by_boat"],
        bySubmarine: json["by_submarine"],
        travelBySubm: json["travel_by_subm"],
        breakfast: json["breakfast"],
        lunch: json["lunch"],
        dinner: json["dinner"],
      );

  Map<String, dynamic> toJson() => {
        "buttons": buttons,
        "sub_buttons": subButtons,
        "cards": cards,
        "sub_cards": subCards,
        "progress_indicators": progressIndicators,
        "sub_proInd": subProInd,
        "snackbars_dialogs": snackbarsDialogs,
        "sub_snack_dia": subSnackDia,
        "anim_contain": animContain,
        "sub_anim_cont": subAnimCont,
        "ui_cont_tiles": uiContTiles,
        "sub_ui_cont_tiles": subUiContTiles,
        "app_intro": appIntro,
        "app_intro_sub": appIntroSub,
        "infinite_scroll": infiniteScroll,
        "sub_infi_scroll": subInfiScroll,
        "counter_sceen": counterSceen,
        "sub_counter": subCounter,
        "change_theme": changeTheme,
        "change_apptheme": changeApptheme,
        "intro_tit_1": introTit1,
        "intro_sub_1": introSub1,
        "intro_tit_2": introTit2,
        "intro_sub_2": introSub2,
        "intro_tit_3": introTit3,
        "intro_sub_3": introSub3,
        "skip": skip,
        "start": start,
        "count": count,
        "checked": checked,
        "this_color": thisColor,
        "additional_controls": additionalControls,
        "transport_vehicles": transportVehicles,
        "by_car": byCar,
        "travel_by_car": travelByCar,
        "by plane": byPlane,
        "travel_by_plane": travelByPlane,
        "by boat": byBoat,
        "travel_by_boat": travelByBoat,
        "by_submarine": bySubmarine,
        "travel_by_subm": travelBySubm,
        "breakfast": breakfast,
        "lunch": lunch,
        "dinner": dinner,
      };
}
