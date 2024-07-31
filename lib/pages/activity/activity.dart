import 'package:flutter/material.dart';
import 'package:wellness_tracker/pages/activity/states/weight_graph.dart';
import 'package:wellness_tracker/pages/activity/states/weight_main.dart';
import 'package:wellness_tracker/pages/activity/states/weight_settings.dart';
import '../../models/PageState.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _Activity();
}

class _Activity extends State<Activity> {
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
        state = ActivityMain(updateState: updatePageState);
        break;
      case PageState.Settings:
        state = ActivitySettings(updateState: updatePageState);
        break;
      case PageState.Graph:
        state = ActivityGraph(updateState: updatePageState);
        break;
      default:
        throw UnimplementedError('no widget for $_currentState');
    }

    return Scaffold(body: state);
  }
}
