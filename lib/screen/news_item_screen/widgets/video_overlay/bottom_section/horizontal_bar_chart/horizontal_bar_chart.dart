// import 'dart:html';

import 'package:flutter/material.dart';

// used this as a starter https://stackoverflow.com/questions/71281800/flutter-horizontal-bar-chart-stacked-in-one-bar-chart

class HorizontalBarChart extends StatelessWidget {
  const HorizontalBarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chartData = [
      {
        "units": 0,
        "color": Colors.redAccent,
        "labelText": " left 0%",
      },
      {
        "units": 22,
        "color": Colors.lightBlue,
        "labelText": " center 22%",
      },
      {
        "units": 78,
        "color": Colors.green,
        "labelText": " right 78%",
      },
    ];

    const TextStyle style = TextStyle(
        color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.normal);

    var textLengths = [];
    var segmentLengths = [];
    var textCenters = [];
    var textStarts = [];

    double barWidth = MediaQuery.of(context).size.width - 20.0;
    double totalUnitNum = 0.0;
    for (int i = 0; i < chartData.length; i++) {
      totalUnitNum =
          totalUnitNum + double.parse(chartData[i]["units"].toString());
    }
    for (int i = 0; i < chartData.length; i++) {
      double textWidth = calcTextSize(chartData[i]["labelText"], style).width;
      textLengths.add(textWidth);
      double segmentLength = chartData[i]["units"] / totalUnitNum * barWidth;
      segmentLengths.add(segmentLength);
    }
    double barLength = 0;
    for (int i = 0; i < chartData.length; i++) {
      double textCenter = segmentLengths[i] / 2.0 + barLength;
      print("textCenter : $textCenter");
      //var textCenter = barLength + textLengths[i];
      textCenters.add(textCenter);
      barLength += segmentLengths[i];
      print("textLengths[$i] : ${textLengths[i]}");
      print("segmentLengths[$i] : ${segmentLengths[i]}");
      print("textCenters[$i] : ${textCenters[i]}");
    }

    double barrierLeft = 0.0;
    for (int i = 0; i < chartData.length; i++) {
      if (textCenters[i] - textLengths[i] / 2.0 < barrierLeft) {
        textCenters[i] = barrierLeft + textLengths[i] / 2.0;
        double textStart = textCenters[i] - textLengths[i] / 2.0;
        textStarts.add(textStart);
        barrierLeft = barrierLeft + textLengths[i];
      } else {
        double textStart = textCenters[i] - textLengths[i] / 2.0;
        textStarts.add(textStart);
        barrierLeft = textCenters[i] + textLengths[i] / 2.0;
      }
    }

    List<Widget> textWidgets = [];

    double barrierRight = barWidth;
    for (int i = chartData.length - 1; i >= 0; i--) {
      if (textCenters[i] + textLengths[i] / 2.0 > barrierRight) {
        textCenters[i] = barrierRight - textLengths[i] / 2.0;
        double textStart = textCenters[i] - textLengths[i] / 2.0;
        textStarts[i] = textStart;
        barrierRight = barrierRight - textLengths[i];
      } else {
        double textStart = textCenters[i] - textLengths[i] / 2.0;
        textStarts[i] = textStart;
        barrierRight = textCenters[i] - textLengths[i] / 2.0;
      }
    }
    for (int i = 0; i < chartData.length; i++) {
      var myStyle = style.copyWith(color: chartData[i]["color"]);
      Text textWidget = Text(chartData[i]["labelText"], style: myStyle);
      textWidgets.add(textWidget);
    }

    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.4, 1.0],
          colors: <Color>[
            Color(0x00ffffff),
            Color(0xaaffffff),
            Color(0xaaffffff),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
            child: Container(
              width: barWidth,
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxHeight: 24,
              ),
              child: Stack(
                children: [
                  for (int i = 0; i < chartData.length; i++)
                    Positioned(
                      left: textStarts[i],
                      child: textWidgets[i],
                    ),
                  // Positioned(
                  //   left: 20,
                  //   top: 0,
                  //   width: 40,
                  //   height: 40,
                  //   child: CustomPaint(
                  //     painter: MyPainter(),
                  //     size: Size(50, 60),
                  //   ),
                  // ), 
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                width: barWidth,
                alignment: Alignment.center,
                constraints: const BoxConstraints(
                  maxHeight: 12,
                ),
                color: Colors.green,
                child: Row(
                  children: [
                    for (int i = 0; i < chartData.length; i++)
                      SizedBox(
                        width: segmentLengths[i],
                        height: 24,
                        child: ColoredBox(
                          color: chartData[i]["color"],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }

  Size calcTextSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
      textScaleFactor: WidgetsBinding.instance.window.textScaleFactor,
    )..layout();
    return textPainter.size;
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(0, 0);
    final p2 = Offset(40, 40);
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
