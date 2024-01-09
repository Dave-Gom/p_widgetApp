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
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CartType1(
                elevation: card['elevation'],
                label: card["lavel"],
              )),
          ...cards.map((card) => _CartType2(
                elevation: card['elevation'],
                label: card["lavel"],
              )),
          ...cards.map((card) => _CartType3(
                elevation: card['elevation'],
                label: card["lavel"],
              )),
          ...cards.map((card) => _CartType4(
                elevation: card['elevation'],
                label: card["lavel"],
              )),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class _CartType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CartType1({
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
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(label),
          )
        ]),
      ),
    );
  }
}

class _CartType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CartType2({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colors.outline),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('$label + outline'),
          )
        ]),
      ),
    );
  }
}

class _CartType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CartType3({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text("$label - filled"),
          )
        ]),
      ),
    );
  }
}

class _CartType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CartType4({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(children: [
        Image.network(
          "https://picsum.photos/id/${elevation.toInt()}/600/350",
          height: 350,
          fit: BoxFit.cover,
        ),
        Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            )),
      ]),
    );
  }
}
