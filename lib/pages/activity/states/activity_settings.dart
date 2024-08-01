import 'package:flutter/material.dart';
import 'package:wellness_tracker/models/page_state.dart';

class ActivitySettings extends StatefulWidget {
  final Function updateState;

  const ActivitySettings({super.key, required this.updateState});

  @override
  State<ActivitySettings> createState() => _ActivitySettings();
}

class _ActivitySettings extends State<ActivitySettings> {
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
