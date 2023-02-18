import 'package:flutter/material.dart';
import 'package:ludo/main.dart';

class Camp extends StatelessWidget {
  const Camp({
    super.key,
    this.alignment = Alignment.center,
    this.color = Colors.black87,
  });

  final Alignment alignment;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: size.width * .35,
        width: size.width * .35,
        color: color,
      ),
    );
  }
}
