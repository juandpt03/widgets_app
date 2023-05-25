class LocaleModel {
  late String buttons;
  late String subButtons;
  late String cards;
  late String subCards;
  late String progressIndicators;
  late String subProInd;
  late String snackbarsDialogs;
  late String subSnackDia;
  late String animContain;
  late String subAnimCont;
  late String uiContTiles;
  late String subUiContTiles;
  late String appIntro;
  late String appIntroSub;
  late String infiniteScroll;
  late String subInfiScroll;
  late String counterSceen;
  late String subCounter;
  late String changeTheme;
  late String changeApptheme;
  late String introTit1;
  late String introSub1;
  late String introTit2;
  late String introSub2;
  late String introTit3;
  late String introSub3;
  late String skip;
  late String start;
  late String count;
  late String checked;
  late String thisColor;
  late String additionalControls;
  late String transportVehicles;
  late String byCar;
  late String travelByCar;
  late String byPlane;
  late String travelByPlane;
  late String byBoat;
  late String travelByBoat;
  late String bySubmarine;
  late String travelBySubm;
  late String breakfast;
  late String lunch;
  late String dinner;
  late String showSnackbar;
  late String showDialog;
  late String dialogMsg;
  late String licenseUsed;
  late String youreSure;
  late String agreeMsg;
  late String cancel;
  late String confirm;
  late String helloWorld;

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
    required this.showSnackbar,
    required this.showDialog,
    required this.dialogMsg,
    required this.licenseUsed,
    required this.youreSure,
    required this.agreeMsg,
    required this.cancel,
    required this.confirm,
    required this.helloWorld,
  });

  LocaleModel.fromJson(Map<String, dynamic> json) {
    buttons = json['buttons'] ?? "";
    subButtons = json['sub_buttons'] ?? "";
    cards = json['cards'] ?? "";
    subCards = json['sub_cards'] ?? "";
    progressIndicators = json['progress_indicators'] ?? "";
    subProInd = json['sub_proInd'] ?? "";
    snackbarsDialogs = json['snackbars_dialogs'] ?? "";
    subSnackDia = json['sub_snack_dia'] ?? "";
    animContain = json['anim_contain'] ?? "";
    subAnimCont = json['sub_anim_cont'] ?? "";
    uiContTiles = json['ui_cont_tiles'] ?? "";
    subUiContTiles = json['sub_ui_cont_tiles'] ?? "";
    appIntro = json['app_intro'] ?? "";
    appIntroSub = json['app_intro_sub'] ?? "";
    infiniteScroll = json['infinite_scroll'] ?? "";
    subInfiScroll = json['sub_infi_scroll'] ?? "";
    counterSceen = json['counter_sceen'] ?? "";
    subCounter = json['sub_counter'] ?? "";
    changeTheme = json['change_theme'] ?? "";
    changeApptheme = json['change_apptheme'] ?? "";
    introTit1 = json['intro_tit_1'] ?? "";
    introSub1 = json['intro_sub_1'] ?? "";
    introTit2 = json['intro_tit_2'] ?? "";
    introSub2 = json['intro_sub_2'] ?? "";
    introTit3 = json['intro_tit_3'] ?? "";
    introSub3 = json['intro_sub_3'] ?? "";
    skip = json['skip'] ?? "";
    start = json['start'] ?? "";
    count = json['count'] ?? "";
    checked = json['checked'] ?? "";
    thisColor = json['this_color'] ?? "";
    additionalControls = json['additional_controls'] ?? "";
    transportVehicles = json['transport_vehicles'] ?? "";
    byCar = json['by_car'] ?? "";
    travelByCar = json['travel_by_car'] ?? "";
    byPlane = json['by plane'] ?? "";
    travelByPlane = json['travel_by_plane'] ?? "";
    byBoat = json['by boat'] ?? "";
    travelByBoat = json['travel_by_boat'] ?? "";
    bySubmarine = json['by_submarine'] ?? "";
    travelBySubm = json['travel_by_subm'] ?? "";
    breakfast = json['breakfast'] ?? "";
    lunch = json['lunch'] ?? "";
    dinner = json['dinner'] ?? "";
    showSnackbar = json['show_snackbar'] ?? "";
    showDialog = json['show_dialog'] ?? "";
    dialogMsg = json['dialog_msg'] ?? "";
    licenseUsed = json['license_used'] ?? "";
    youreSure = json['youre_sure'] ?? "";
    agreeMsg = json['agree_msg'] ?? "";
    cancel = json['cancel'] ?? "";
    confirm = json['confirm'] ?? "";
    helloWorld = json['hello_world'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['buttons'] = buttons;
    data['sub_buttons'] = subButtons;
    data['cards'] = cards;
    data['sub_cards'] = subCards;
    data['progress_indicators'] = progressIndicators;
    data['sub_proInd'] = subProInd;
    data['snackbars_dialogs'] = snackbarsDialogs;
    data['sub_snack_dia'] = subSnackDia;
    data['anim_contain'] = animContain;
    data['sub_anim_cont'] = subAnimCont;
    data['ui_cont_tiles'] = uiContTiles;
    data['sub_ui_cont_tiles'] = subUiContTiles;
    data['app_intro'] = appIntro;
    data['app_intro_sub'] = appIntroSub;
    data['infinite_scroll'] = infiniteScroll;
    data['sub_infi_scroll'] = subInfiScroll;
    data['counter_sceen'] = counterSceen;
    data['sub_counter'] = subCounter;
    data['change_theme'] = changeTheme;
    data['change_apptheme'] = changeApptheme;
    data['intro_tit_1'] = introTit1;
    data['intro_sub_1'] = introSub1;
    data['intro_tit_2'] = introTit2;
    data['intro_sub_2'] = introSub2;
    data['intro_tit_3'] = introTit3;
    data['intro_sub_3'] = introSub3;
    data['skip'] = skip;
    data['start'] = start;
    data['count'] = count;
    data['checked'] = checked;
    data['this_color'] = thisColor;
    data['additional_controls'] = additionalControls;
    data['transport_vehicles'] = transportVehicles;
    data['by_car'] = byCar;
    data['travel_by_car'] = travelByCar;
    data['by plane'] = byPlane;
    data['travel_by_plane'] = travelByPlane;
    data['by boat'] = byBoat;
    data['travel_by_boat'] = travelByBoat;
    data['by_submarine'] = bySubmarine;
    data['travel_by_subm'] = travelBySubm;
    data['breakfast'] = breakfast;
    data['lunch'] = lunch;
    data['dinner'] = dinner;
    data['show_snackbar'] = showSnackbar;
    data['show_dialog'] = showDialog;
    data['dialog_msg'] = dialogMsg;
    data['license_used'] = licenseUsed;
    data['youre_sure'] = youreSure;
    data['agree_msg'] = agreeMsg;
    data['cancel'] = cancel;
    data['confirm'] = confirm;
    return data;
  }
}
