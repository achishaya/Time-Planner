import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 6.0;

    return Padding(
      padding: EdgeInsets.only(top:10, right: 10, left: 10, bottom: 5),
      child: Column(
        children: <Widget>[
          Text("Heading"),
          SizedBox(
            width: 320,
            height: 200,
            child: FlChart(
              chart: LineChart(
                LineChartData(
                  lineTouchData: const LineTouchData(enabled: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 4),
                        FlSpot(2, 7),
                        FlSpot(4, 4),
                        FlSpot(6, 8),
                        FlSpot(8, 4),
                        FlSpot(10, 6),
                        FlSpot(12, 11),
                      ],
                      isCurved: true,
                      barWidth: 1,
                      colors: [
                        Colors.purpleAccent,
                      ],
                      belowBarData: BarAreaData(
                        show: true,
                        colors: [Colors.red.withOpacity(1)],
                        cutOffY: cutOffYValue,
                        applyCutOffY: true,
                      ),
                      aboveBarData: BarAreaData(
                        show: true,
                        colors: [Colors.green.withOpacity(1)],
                        cutOffY: cutOffYValue,
                        applyCutOffY: true,
                      ),
                      dotData: const FlDotData(
                        show: false,
                      ),
                    ),
                  ],
                  minY: 0,
                  titlesData: FlTitlesData(
                    bottomTitles: SideTitles(
                        showTitles: true,
                        textStyle: TextStyle(
                            fontSize: 10,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'M';
                            case 2:
                              return 'T';
                            case 4:
                              return 'W';
                            case 6:
                              return 'T';
                            case 8:
                              return 'F';
                            case 10:
                              return 'S';
                            case 12:
                              return 'S';
                            default:
                              return '';
                          }
                        }),
                    leftTitles: SideTitles(
                      showTitles: true,
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 2:
                            return '2';
                          case 4:
                            return '4';
                          case 6:
                            return '6';
                          case 8:
                            return '8';
                          case 10:
                            return '10';
                          case 12:
                            return '12';
                          default:
                            return '';
                        }
                      })
                  ),
                  gridData: FlGridData(
                      show: true,
                      checkToShowVerticalGrid: (double value) {
                        return value == 2 || value == 4 || value == 6 || value == 8 || value == 10 || value == 12;
                      }),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}