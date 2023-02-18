import 'package:flutter/material.dart';
import 'package:ludo/board/board.dart';

void main() {
  runApp(const MyApp());
}

final navKey = GlobalKey<NavigatorState>();
final size = MediaQuery.of(navKey.currentContext!).size;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameBoard(),
      navigatorKey: navKey,
    );
  }
}
