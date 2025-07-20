import 'package:courses/layouts/responsive_layout.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class PieChartSectionModel {
  final String title;
  final double value;
  final Color color;

  PieChartSectionModel({
    required this.title,
    required this.value,
    required this.color,
  });
}

class PieChartCard extends StatefulWidget {
  final String title;
  final List<PieChartSectionModel> sections;

  const PieChartCard({super.key, required this.title, required this.sections});

  @override
  State<PieChartCard> createState() => _PieChartCardState();
}

class _PieChartCardState extends State<PieChartCard> {
  int _touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 24),
            ResponsiveLayout(
              mobileBody: pieContent(context, true),
              desktopBody: pieContent(context, false),
            ),
          ],
        ),
      ),
    ).animate().fade(duration: 500.ms, delay: 600.ms).slideY(begin: 0.2);
  }

  Widget pieContent(BuildContext context, bool isMobile) {
    return SizedBox(
      width: isMobile
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 180,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          _touchedIndex = -1;
                          return;
                        }
                        _touchedIndex = pieTouchResponse
                            .touchedSection!
                            .touchedSectionIndex;
                      });
                    },
                  ),
                  sections: _buildChartSections(),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 4,
                  centerSpaceRadius: 50,
                ),
                swapAnimationDuration: 200.ms,
                swapAnimationCurve: Curves.easeInOut,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.sections
                  .map(
                    (section) => _buildLegendItem(section.title, section.color),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _buildChartSections() {
    return widget.sections.asMap().entries.map((entry) {
      final int index = entry.key;
      final PieChartSectionModel data = entry.value;
      final bool isTouched = index == _touchedIndex;

      final double fontSize = isTouched ? 18.0 : 14.0;
      final double radius = isTouched ? 60.0 : 50.0;

      return PieChartSectionData(
        color: data.color,
        value: data.value,
        title: '${data.value.toStringAsFixed(1)}%',
        radius: radius,
        titleStyle: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [const Shadow(color: Colors.black, blurRadius: 2)],
        ),
      );
    }).toList();
  }

  Widget _buildLegendItem(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Container(width: 16, height: 16, color: color),
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
    );
  }
}
