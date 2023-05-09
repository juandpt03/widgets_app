import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const route = 'ui_controls_screen';

  const UiControlsScreen({super.key});

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
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {});
            isDeveloper = !isDeveloper;
          },
        ),
        ExpansionTile(
          title: const Text('Vehículos de Transportes'),
          subtitle: Text(
            selectedTransportation.toString(),
          ),
          children: [
            RadioListTile(
              title: const Text('by car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.car;
              },
            ),
            RadioListTile(
              title: const Text('by plane'),
              subtitle: const Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.plane;
              },
            ),
            RadioListTile(
              title: const Text('by boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {});
                selectedTransportation = Transportation.boat;
              },
            ),
            RadioListTile(
              title: const Text('by submarine'),
              subtitle: const Text('Viajar por submarino'),
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
          title: const Text('Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) {
            wantsLunch = !wantsLunch;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) {
            wantsDinner = !wantsDinner;
            setState(() {});
          },
        )
      ],
    );
  }
}
