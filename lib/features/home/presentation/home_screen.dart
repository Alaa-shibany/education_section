import 'package:courses/shared/stats/kpi_stats_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
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
        ),
      ),
    );
  }
}
