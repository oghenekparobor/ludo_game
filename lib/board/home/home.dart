import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ludo/main.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    this.alignment = Alignment.center,
    this.color = Colors.white,
  });

  final Alignment alignment;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: size.width * .3,
        height: size.width * .3,
        color: color,
      ),
    );
  }
}
