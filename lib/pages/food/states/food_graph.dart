import 'package:flutter/material.dart';
import 'package:wellness_tracker/models/page_state.dart';

class FoodGraph extends StatefulWidget {
  final Function updateState;

  const FoodGraph({super.key, required this.updateState});

  @override
  State<FoodGraph> createState() => _FoodGraph();
}

class _FoodGraph extends State<FoodGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Graphs"),
        leading: IconButton(
            onPressed: () => widget.updateState(PageState.Main),
            tooltip: "Back",
            icon: const Icon(Icons.arrow_back)),
      ),
    );
  }
}
