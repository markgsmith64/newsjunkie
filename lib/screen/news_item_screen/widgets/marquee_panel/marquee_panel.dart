import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueePanel extends StatelessWidget {
  const MarqueePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        color: Colors.black,
        child: Marquee( 
          text:
              'Some sample text that takes some space.   text that takes some space.   text that takes some space text that takes some space. ',
          style: const TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          blankSpace: 20.0,
          velocity: 70.0,
          startPadding: 10.0,
        ),
      ),
    );
  }
}
