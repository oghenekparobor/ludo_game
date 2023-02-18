import 'package:flutter/material.dart';
import 'package:ludo/board/home/camp.dart';
import 'package:ludo/board/home/home.dart';
import 'package:ludo/board/path/road_hoz.dart';
import 'package:ludo/board/path/road_vet.dart';
import 'package:ludo/main.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: Container(
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Stack(
                children: const [
                  Camp(alignment: Alignment.topRight),
                  Camp(alignment: Alignment.topLeft),
                  Camp(alignment: Alignment.bottomRight),
                  Camp(alignment: Alignment.bottomLeft),
                  PathWayHorizontal(alignment: Alignment.centerRight),
                  PathWayHorizontal(alignment: Alignment.centerLeft),
                  PathWayVertical(alignment: Alignment.topCenter),
                  PathWayVertical(alignment: Alignment.bottomCenter),
                  Home(color: Colors.black),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
