import 'package:flutter/material.dart';

import 'package:widgets_app/config/localisation/localizations.dart';
import 'package:widgets_app/models/locale_model.dart';

class UiControlsScreen extends StatelessWidget {

  const UiControlsScreen({super.key});
  static const route = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const UIControlsView(),
    );
  }
}

class UIControlsView extends StatefulWidget {
  const UIControlsView({super.key});

  @override
  State<UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    ///
    /// Class File with localised text
    ///
    final LocaleModel st = AppLocalizations.of(context)!.value();
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: Text(st.additionalControls),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {});
            isDeveloper = !isDeveloper;
          },
        ),
        ExpansionTile(
          title: Text(st.transportVehicles),
          subtitle: Text(
            selectedTransportation.toString(),
          ),
          children: [
            RadioListTile(
              title: Text(st.byCar),
              subtitle: Text(st.travelByCar),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.car;
              },
            ),
            RadioListTile(
              title: Text(st.byPlane),
              subtitle: Text(st.travelByPlane),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.plane;
              },
            ),
            RadioListTile(
              title: Text(st.byBoat),
              subtitle: Text(st.travelByBoat),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.boat;
              },
            ),
            RadioListTile(
              title: Text(st.bySubmarine),
              subtitle: Text(st.travelBySubm),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.submarine;
              },
            ),
          ],
        ),
        CheckboxListTile(
          title: Text('${st.breakfast}?'),
          value: wantsBreakfast,
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: Text('${st.lunch}?'),
          value: wantsLunch,
          onChanged: (value) {
            wantsLunch = !wantsLunch;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: Text('${st.dinner}?'),
          value: wantsDinner,
          onChanged: (value) {
            wantsDinner = !wantsDinner;
            setState(() {});
          },
        ),
      ],
    );
  }
}
