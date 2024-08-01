import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:wellness_tracker/pages/activity/activity.dart';
import 'package:wellness_tracker/pages/food/food.dart';
import 'package:wellness_tracker/pages/weight/weight.dart';

final pb = PocketBase('http://127.0.0.1:8090');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// ignore: constant_identifier_names
enum Page { Activity, Food, Weight }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Page currentPage = Page.Food;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (currentPage) {
      case Page.Activity:
        page = const Activity();
        break;
      case Page.Food:
        page = const Food();
        break;
      case Page.Weight:
        page = const Weight();
        break;
      default:
        throw UnimplementedError('no widget for $currentPage');
    }

    if (MediaQuery.of(context).size.width < 700) {
      return Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.directions_run),
              label: 'Activity',
            ),
            NavigationDestination(
              icon: Icon(Icons.lunch_dining),
              label: 'Food',
            ),
            NavigationDestination(
              icon: Icon(Icons.monitor_weight),
              label: 'Weight',
            ),
          ],
          selectedIndex: currentPage.index,
          onDestinationSelected: (value) {
            setState(() {
              currentPage = Page.values[value];
            });
          },
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              bottom: true,
              child: NavigationRail(
                extended: false,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.directions_run),
                    label: Text('Activity'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.lunch_dining),
                    label: Text('Food'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.monitor_weight),
                    label: Text('Weight'),
                  ),
                ],
                selectedIndex: currentPage.index,
                onDestinationSelected: (value) {
                  setState(() {
                    currentPage = Page.values[value];
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    }
  }
}
