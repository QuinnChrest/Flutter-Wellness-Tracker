import 'package:flutter/material.dart';
import 'package:wellness_tracker/pages/weight/states/weight_graph.dart';
import 'package:wellness_tracker/pages/weight/states/weight_main.dart';
import 'package:wellness_tracker/pages/weight/states/weight_settings.dart';
import '../../models/page_state.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _Weight();
}

class _Weight extends State<Weight> {
  PageState _currentState = PageState.Main;

  updatePageState(PageState state) {
    setState(() {
      _currentState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget state;
    switch (_currentState) {
      case PageState.Main:
        state = WeightMain(updateState: updatePageState);
        break;
      case PageState.Settings:
        state = WeightSettings(updateState: updatePageState);
        break;
      case PageState.Graph:
        state = WeightGraph(updateState: updatePageState);
        break;
      default:
        throw UnimplementedError('no widget for $_currentState');
    }

    return Scaffold(body: state);
  }
}
