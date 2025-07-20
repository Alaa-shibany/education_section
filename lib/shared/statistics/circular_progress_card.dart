import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularProgressCard extends StatelessWidget {
  final String title;
  final double currentValue;
  final double goalValue;
  final Color color;
  final String unitLabel; // وصف للرقم مثل "Users" أو "USD"

  const CircularProgressCard({
    super.key,
    required this.title,
    required this.currentValue,
    required this.goalValue,
    required this.color,
    required this.unitLabel,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = (currentValue / goalValue).clamp(0.0, 1.0);

    return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: percentage),
                  duration: 1500.ms,
                  curve: Curves.easeInOutCubic,
                  builder: (context, animatedPercentage, child) {
                    return SizedBox(
                      width: 150,
                      height: 150,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          // الدائرة الخلفية (المسار)
                          CircularProgressIndicator(
                            value: 1, // تملأ الدائرة كاملة
                            strokeWidth: 12,
                            backgroundColor: color.withOpacity(0.1),
                            color: Colors.grey.shade200,
                          ),
                          CircularProgressIndicator(
                            value: animatedPercentage,
                            strokeWidth: 12,
                            valueColor: AlwaysStoppedAnimation<Color>(color),
                            strokeCap: StrokeCap.round,
                          ),
                          Center(
                            child: AnimatedFlipCounter(
                              value: animatedPercentage * 100,
                              fractionDigits: 1,
                              suffix: "%",
                              textStyle: GoogleFonts.poppins(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: color,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),
                Text(
                  '${currentValue.toInt()} / ${goalValue.toInt()} $unitLabel',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(
                      context,
                    ).textTheme.bodySmall?.color?.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        )
        .animate()
        .fade(duration: 500.ms, delay: 200.ms)
        .scaleXY(begin: 0.8, curve: Curves.easeOut);
  }
}
