import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      getChartData(),
    );
  }

  PieChartData getChartData() {
    return PieChartData(

      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          if (pieTouchResponse == null ||
              pieTouchResponse.touchedSection == null) {
            return;
          }
          setState(() {
            touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          color: Colors.red,
          value: 25,
          radius:  touchedIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: Colors.green,
          value: 25,
          radius:  touchedIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: Colors.blue,
          value: 25,
          radius:  touchedIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: Colors.yellow,
          value: 25,
          radius:  touchedIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
