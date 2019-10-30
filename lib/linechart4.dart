import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 140,
      child: FlChart(
        chart: LineChart(
          LineChartData(
            lineTouchData: const LineTouchData(enabled: false),
            lineBarsData: [
              const LineChartBarData(
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 2),
                  FlSpot(2, 1.5),
                  FlSpot(3, 3),
                  FlSpot(4, 3.5),
                  FlSpot(5, 5),
                  FlSpot(6, 3),
                ],
                isCurved: true,
                barWidth: 2,
                belowBarData: BarAreaData(
                  show: true,
                ),
                dotData: FlDotData(show: false),
              ),
            ],
            minY: 0,
            titlesData: FlTitlesData(
              leftTitles: const SideTitles(
                showTitles: false,
              ),
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: (val) {
                    switch (val.toInt()) {
                      case 0:
                        return 'M';
                      case 1:
                        return 'T';
                      case 2:
                        return 'W';
                      case 3:
                        return 'T';
                      case 4:
                        return 'F';
                      case 5:
                        return 'S';
                      case 6:
                        return 'S';
                    }
                    return '';
                  },
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontFamily: 'Digital',
                    fontSize: 14,
                  )),
            ),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(
              show: true,
            ),
          ),
        ),
      ),
    );
  }
}