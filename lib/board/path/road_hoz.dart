import 'package:flutter/material.dart';
import 'package:ludo/board/path/road_vet.dart';
import 'package:ludo/main.dart';

class PathWayHorizontal extends StatelessWidget {
  const PathWayHorizontal({
    super.key,
    this.alignment = Alignment.center,
    this.color = Colors.grey,
    required this.playerId,
  });

  final Alignment alignment;
  final Color color;
  final String playerId;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: size.width * .3,
        width: size.width * .35,
        color: color,
        child: Wrap(
          children: [
            for (var i = 0; i < 18; i++) HorizontalBox(i: i),
          ],
        ),
      ),
    );
  }
}

class HorizontalBox extends StatelessWidget {
  const HorizontalBox({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    var width = ((size.width * .35) / 6);
    var height = ((size.width * .3) / 3);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: .5),
        ),
        alignment: Alignment.center,
        child: i == 3 ? Seed(height: height, width: width) : Text(i.toString()),
      ),
    );
  }
}
