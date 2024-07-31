import 'package:flutter/material.dart';
import 'package:wellness_tracker/models/PageState.dart';

class WeightSettings extends StatefulWidget {
  final Function updateState;

  const WeightSettings({super.key, required this.updateState});

  @override
  State<WeightSettings> createState() => _WeightSettings();
}

class _WeightSettings extends State<WeightSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Settings"),
          leading: IconButton(
              onPressed: () => widget.updateState(PageState.Main),
              tooltip: "Back",
              icon: const Icon(Icons.arrow_back))),
    );
  }
}
