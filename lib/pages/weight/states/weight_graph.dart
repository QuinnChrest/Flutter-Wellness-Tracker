import 'package:flutter/material.dart';
import 'package:wellness_tracker/models/page_state.dart';

class WeightGraph extends StatefulWidget {
  final Function updateState;

  const WeightGraph({super.key, required this.updateState});

  @override
  State<WeightGraph> createState() => _WeightGraph();
}

class _WeightGraph extends State<WeightGraph> {
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
