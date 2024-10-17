import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text("Point: 854",
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Color(0xFF0A9396),
                ),
                Text(
                  "25 upward",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A9396)),
                ),
                Expanded(child: SizedBox()),
                // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 40.0,))
              ],
            ),
            SfCartesianChart(
              plotAreaBackgroundColor: Colors.transparent,
              margin: const EdgeInsets.symmetric(vertical: 32.0),
              borderColor: Colors.transparent,
              borderWidth: 0,
              plotAreaBorderWidth: 0,
              enableSideBySideSeriesPlacement: false,
              primaryXAxis: const CategoryAxis(
                isVisible: true,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
                minimum: 0,
                maximum: 2,
                interval: 0.5,
              ),
              series: <CartesianSeries>[
                ColumnSeries<ChartColumnData, String>(
                    borderRadius: BorderRadius.circular(20.0),
                    dataSource: chartData,
                    width: 0.5,
                    color: const Color(0xFFE9EDF7),
                    xValueMapper: (ChartColumnData data, _) => data.x,
                    yValueMapper: (ChartColumnData data, _) => data.y),
                ColumnSeries<ChartColumnData, String>(
                    borderRadius: BorderRadius.circular(20.0),
                    dataSource: chartData,
                    width: 0.5,
                    color: Colors.blue,
                    xValueMapper: (ChartColumnData data, _) => data.x,
                    yValueMapper: (ChartColumnData data, _) => data.y1),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChartColumnData {
  ChartColumnData(this.x, this.y, this.y1);
  final String x;
  final double y;
  final double y1;
}

final List<ChartColumnData> chartData = <ChartColumnData>[
  ChartColumnData("Mo", 2, 1),
  ChartColumnData("Tu", 2, 0.5),
  ChartColumnData("We", 2, 1.5),
  ChartColumnData("Th", 2, 0.8),
  ChartColumnData("Fr", 2, 1.3),
  ChartColumnData("Sa", 2, 1.8),
  ChartColumnData("Su", 2, 0.9),
];
