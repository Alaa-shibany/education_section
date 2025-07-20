import 'package:courses/shared/statistics/circular_progress_card.dart';
import 'package:courses/shared/statistics/kpi_stats_card.dart';
import 'package:courses/shared/statistics/line_chart_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FlSpot> userActivitySpots = [
      const FlSpot(0, 3), // اليوم 0، القيمة 3
      const FlSpot(1, 5), // اليوم 1، القيمة 5
      const FlSpot(2, 4),
      const FlSpot(3, 7),
      const FlSpot(4, 6),
      const FlSpot(5, 8),
      const FlSpot(6, 7), // اليوم 6، القيمة 7
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
              CircularProgressCard(
                title: 'Project Completion',
                currentValue: 34,
                goalValue: 50,
                color: Colors.teal,
                unitLabel: 'Tasks',
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
