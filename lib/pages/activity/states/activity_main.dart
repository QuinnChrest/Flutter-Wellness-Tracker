import 'package:flutter/material.dart';
import '../../../models/page_state.dart';

class ActivityMain extends StatefulWidget {
  final Function updateState;

  const ActivityMain({super.key, required this.updateState});

  @override
  State<ActivityMain> createState() => _ActivityMain();
}

class _ActivityMain extends State<ActivityMain> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Activity"),
        actions: [
          IconButton(
            onPressed: () => widget.updateState(PageState.Graph),
            tooltip: "Graphs",
            icon: const Icon(Icons.leaderboard),
          ),
          IconButton(
            onPressed: () => widget.updateState(PageState.Settings),
            tooltip: "Settings",
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Activity:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
