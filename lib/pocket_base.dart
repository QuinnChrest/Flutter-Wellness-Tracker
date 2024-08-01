import 'dart:io';
import 'package:pocketbase/pocketbase.dart';

late final PocketBase pb;

Future<void> init() async {
  pb = PocketBase('http://$_host:8090/');
}

String get _host => (Platform.isAndroid) ? '10.0.2.2' : '127.0.0.1';
