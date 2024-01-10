import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation transp = Transportation.car;
  bool wantsBreakfase = false;
  bool wantsLounch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Developer Mode"),
          subtitle: const Text("Controles adicionales"),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text('$transp'),
          children: [
            RadioListTile(
              title: const Text("By car"),
              subtitle: const Text("viajar en auto"),
              value: Transportation.car,
              groupValue: transp,
              onChanged: (value) => setState(() {
                transp = Transportation.car;
              }),
            ),
            RadioListTile(
                title: const Text("By boar"),
                subtitle: const Text("viajar en bote"),
                value: Transportation.boat,
                groupValue: transp,
                onChanged: (value) => setState(() {
                      transp = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text("By plane"),
                subtitle: const Text("viajar en avion"),
                value: Transportation.plane,
                groupValue: transp,
                onChanged: (value) => setState(() {
                      transp = Transportation.plane;
                    })),
            RadioListTile(
              title: const Text("By submarine"),
              subtitle: const Text("viajar en submarino"),
              value: Transportation.submarine,
              groupValue: transp,
              onChanged: (value) => setState(() {
                transp = Transportation.submarine;
              }),
            )
          ],
        ),
        CheckboxListTile(
          title: const Text("Desayuno"),
          value: wantsBreakfase,
          onChanged: (value) => setState(() {
            wantsBreakfase = !wantsBreakfase;
          }),
        ),
        CheckboxListTile(
          title: const Text("Almuerzo"),
          value: wantsLounch,
          onChanged: (value) => setState(() {
            wantsLounch = !wantsLounch;
          }),
        ),
        CheckboxListTile(
          title: const Text("Cena"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}
