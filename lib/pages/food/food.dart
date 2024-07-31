import 'package:flutter/material.dart';
import 'package:wellness_tracker/pages/food/states/food_graph.dart';
import 'package:wellness_tracker/pages/food/states/food_settings.dart';
import 'package:wellness_tracker/pages/food/states/food_main.dart';
import '../../models/PageState.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _Food();
}

class _Food extends State<Food> {
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
        state = FoodMain(updateState: updatePageState);
        break;
      case PageState.Settings:
        state = FoodSettings(updateState: updatePageState);
        break;
      case PageState.Graph:
        state = FoodGraph(updateState: updatePageState);
        break;
      default:
        throw UnimplementedError('no widget for $_currentState');
    }

    return Scaffold(body: state);
  }
}
