import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {"elevation": 0.0, "lavel": "Elevation 0"},
  {"elevation": 1.0, "lavel": "Elevation 1"},
  {"elevation": 2.0, "lavel": "Elevation 2"},
  {"elevation": 3.0, "lavel": "Elevation 3"},
  {"elevation": 4.0, "lavel": "Elevation 4"},
  {"elevation": 5.0, "lavel": "Elevation 5"},
];

class CardsScreen extends StatelessWidget {
  static const String name = "cards_screen";

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards screen"),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CartType1(
                elevation: card['elevation'],
                label: card["lavel"],
              )),
          ...cards.map((card) => _CartType1(
                elevation: card['elevation'],
                label: card["lavel"],
              ))
        ],
      ),
    );
  }
}

class _CartType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CartType1({
    super.key,
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_vert_outlined))),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(label),
          )
        ]),
      ),
    );
  }
}
