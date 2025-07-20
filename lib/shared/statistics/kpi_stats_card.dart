import 'package:courses/config/responsive/ui_halper.dart';
import 'package:courses/layouts/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:google_fonts/google_fonts.dart';

class KpiStatsCard extends StatefulWidget {
  final String title;
  final double value;
  final IconData icon;
  final Color color;
  final String? prefix;

  const KpiStatsCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    this.prefix,
  });

  @override
  State<KpiStatsCard> createState() => _KpiStatsCardState();
}

class _KpiStatsCardState extends State<KpiStatsCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: _isHovered
                ? (Matrix4.identity()..translate(0, -8, 0))
                : Matrix4.identity(),
            child: Card(
              elevation: _isHovered ? 12 : 4,
              shadowColor: widget.color.withValues(alpha: 0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 40,
                ),
                child: ResponsiveLayout(
                  desktopBody: kpiContent(false),
                  tabletBody: kpiContent(false),
                  mobileBody: kpiContent(true),
                ),
              ),
            ),
          ),
        )
        .animate()
        .fade(duration: 500.ms)
        .slideY(begin: 0.5, duration: 500.ms, curve: Curves.easeOut);
  }

  Widget kpiContent(bool isMobile) {
    return Row(
      mainAxisSize: isMobile ? MainAxisSize.max : MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(widget.icon, size: 30, color: widget.color),
        const SizedBox(width: 16),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontSize: UIHelpers.getResponsiveFontSize(
                  context,
                  baseSize: 12,
                ),
                fontWeight: FontWeight.w500,
                color: Theme.of(
                  context,
                ).textTheme.bodySmall?.color?.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 8),
            AnimatedFlipCounter(
              value: widget.value,
              duration: const Duration(milliseconds: 1500),
              prefix: widget.prefix,
              fractionDigits: 2,
              textStyle: GoogleFonts.poppins(
                fontSize: UIHelpers.getResponsiveFontSize(
                  context,
                  baseSize: 16,
                ),
                fontWeight: FontWeight.bold,
                color: widget.color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
