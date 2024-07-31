import 'package:flutter/material.dart';
import 'package:wellness_tracker/models/PageState.dart';

class ActivityGraph extends StatefulWidget {
  final Function updateState;

  const ActivityGraph({super.key, required this.updateState});

  @override
  State<ActivityGraph> createState() => _ActivityGraph();
}

class _ActivityGraph extends State<ActivityGraph> {
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
