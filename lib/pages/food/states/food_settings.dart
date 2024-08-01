import 'package:flutter/material.dart';
import 'package:wellness_tracker/models/page_state.dart';

class FoodSettings extends StatefulWidget {
  final Function updateState;

  const FoodSettings({super.key, required this.updateState});

  @override
  State<FoodSettings> createState() => _FoodSettings();
}

class _FoodSettings extends State<FoodSettings> {
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
