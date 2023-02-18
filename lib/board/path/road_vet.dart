import 'package:flutter/material.dart';
import 'package:ludo/main.dart';

class PathWayVertical extends StatelessWidget {
  const PathWayVertical({
    super.key,
    this.alignment = Alignment.center,
    this.color = Colors.grey,
  });

  final Alignment alignment;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: size.width * .35,
        width: size.width * .3,
        color: color,
        child: Wrap(
          children: [
            for (var i = 0; i < 18; i++) VerticalBox(i: i),
          ],
        ),
      ),
    );
  }
}

class VerticalBox extends StatelessWidget {
  const VerticalBox({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    var height = ((size.width * .35) / 6);
    var width = ((size.width * .3) / 3);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: .5),
      ),
      alignment: Alignment.center,
      child: i == 6 ? Seed(height: height, width: width) : Text(i.toString()),
    );
  }
}

class Seed extends StatelessWidget {
  const Seed({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (height * .5),
      width: (width * .5),
      color: Colors.black,
    );
  }
}
