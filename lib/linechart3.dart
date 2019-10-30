import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample3 extends StatelessWidget {
  final weekDays = [
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text(
              'Average Line',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Text(
              ' and ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Text(
              'Indicators',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        SizedBox(
          width: 300,
          height: 140,
          child: FlChart(
            chart: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                    getTouchedSpotIndicator: (List<TouchedSpot> spots) {
                      return spots.map((spot) {
                        if (spot.spot.x == 0 || spot.spot.x == 6) {
                          return null;
                        }
                        return TouchedSpotIndicatorData(
                          const FlLine(color: Colors.blue, strokeWidth: 4),
                          const FlDotData(
                              dotSize: 8, dotColor: Colors.deepOrange),
                        );
                      }).toList();
                    },
                    touchTooltipData: TouchTooltipData(
                        tooltipBgColor: Colors.blueAccent,
                        getTooltipItems: (List<TouchedSpot> spots) {
                          return spots.map((spot) {
                            final flSpot = spot.spot;
                            if (flSpot.x == 0 || flSpot.x == 6) {
                              return null;
                            }

                            return TooltipItem(
                              '${weekDays[flSpot.x.toInt()]} \n${flSpot.y} k colories',
                              const TextStyle(color: Colors.white),
                            );
                          }).toList();
                        })),
                extraLinesData:
                ExtraLinesData(showVerticalLines: true, verticalLines: [
                  VerticalLine(
                    y: 3,
                    color: Colors.green.withOpacity(1),
                    strokeWidth: 2,
                  ),
                ]),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 2),
                      FlSpot(1, 6),
                      FlSpot(2, 3),
                      FlSpot(3, 7),
                      FlSpot(4, 2),
                      FlSpot(5, 8),
                      FlSpot(6, 3),
                    ],
                    isCurved: false,
                    barWidth: 2,
                    colors: [
                      Colors.orange,
                    ],
                    belowBarData: BarAreaData(
                        show: true,
                        colors: [
                          Colors.orange.withOpacity(0.5),
                          Colors.orange.withOpacity(0.0),
                        ],
                        gradientColorStops: [0.5, 1.0],
                        gradientFrom: const Offset(0, 0),
                        gradientTo: const Offset(0, 1),
                        spotsLine: BarAreaSpotsLine(
                            show: true,
                            flLineStyle: const FlLine(
                              color: Colors.blue,
                              strokeWidth: 1,
                            ),
                            checkToShowSpotLine: (spot) {
                              if (spot.x == 0 || spot.x == 6) {
                                return false;
                              }

                              return true;
                            })),
                    dotData: FlDotData(
                        show: true,
                        dotColor: Colors.deepOrange,
                        dotSize: 4,
                        checkToShowDot: (spot) {
                          return spot.x >= 0 && spot.x <= 6;
                        }),
                  ),
                ],
                minY: 0,
                maxY: 8,
                gridData: FlGridData(
                  show: true,
                  drawHorizontalGrid: true,
                  drawVerticalGrid: true,
                  getDrawingVerticalGridLine: (value) {
                    if (value == 0) {
                      return const FlLine(
                        color: Colors.deepOrange,
                        strokeWidth: 2,
                      );
                    } else {
                      return const FlLine(
                        color: Colors.grey,
                        strokeWidth: 0.5,
                      );
                    }
                  },
                  getDrawingHorizontalGridLine: (value) {
                    if (value == 0) {
                      return const FlLine(
                        color: Colors.black,
                        strokeWidth: 2,
                      );
                    } else {
                      return const FlLine(
                        color: Colors.grey,
                        strokeWidth: 0.5,
                      );
                    }
                  },
                ),
                titlesData: FlTitlesData(
                    show: true,
                    leftTitles: SideTitles(
                      showTitles: true,
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 2:
                            return '2h';
                          case 4:
                            return '4h';
                          case 6:
                            return '6h';
                          case 8:
                            return '8h';
                        }

                        return '';
                      },
                      textStyle:
                      const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTitles: (value) {
                        return weekDays[value.toInt()];
                      },
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}