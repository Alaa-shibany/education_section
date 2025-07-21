import 'package:courses/shared/statistics/circular_progress_card.dart';
import 'package:courses/shared/statistics/kpi_stats_card.dart';
import 'package:courses/shared/statistics/line_chart_card.dart';
import 'package:courses/shared/statistics/pie_chart_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FlSpot> userActivitySpots = [
      const FlSpot(0, 3),
      const FlSpot(1, 5),
      const FlSpot(2, 4),
      const FlSpot(3, 7),
      const FlSpot(4, 6),
      const FlSpot(5, 8),
      const FlSpot(6, 7),
    ];
    final List<PieChartSectionModel> trafficSources = [
      PieChartSectionModel(title: 'Desktop', value: 45.5, color: Colors.blue),
      PieChartSectionModel(title: 'Tablet', value: 25.5, color: Colors.amber),
      PieChartSectionModel(title: 'Mobile', value: 20.0, color: Colors.purple),
      PieChartSectionModel(title: 'Other', value: 9.0, color: Colors.grey),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  KpiStatsCard(
                    title: 'Total Revenue',
                    value: 1450250.75,
                    icon: Icons.monetization_on_rounded,
                    color: Colors.green,
                    prefix: '\$',
                  ),
                  KpiStatsCard(
                    title: 'New Users',
                    value: 8230,
                    icon: Icons.person_add_alt_1_rounded,
                    color: Colors.blue,
                  ),
                  KpiStatsCard(
                    title: 'Active Tickets',
                    value: 125,
                    icon: Icons.support_agent_rounded,
                    color: Colors.orange,
                  ),
                  KpiStatsCard(
                    title: 'Bounce Rate',
                    value: 23.5,
                    icon: Icons.trending_down_rounded,
                    color: Colors.red,
                    prefix: '%',
                  ),
                ],
              ),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  CircularProgressCard(
                    title: 'Project Completion',
                    currentValue: 34,
                    goalValue: 50,
                    color: Colors.teal,
                    unitLabel: 'Tasks',
                  ),
                  PieChartCard(
                    title: 'Traffic Sources',
                    sections: trafficSources,
                  ),
                ],
              ),
              LineChartCard(
                title: 'User Activity',
                subTitle: 'Last 7 Days',
                color: Colors.indigo,
                spots: userActivitySpots,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
