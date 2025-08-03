import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

Widget buildStatusTimeline(BuildContext context, String status) {
  final translator = AppLocalizations.of(context)!;
  final primaryColor = Theme.of(context).colorScheme.primary;
  final greyColor = Colors.grey.shade400;

  final statuses = ['created', 'announced', 'started', 'finished'];
  final icons = [
    Icons.add_circle_outline,
    Icons.campaign_outlined,
    Icons.play_circle_outlined,
    Icons.check_circle_outlined,
  ];

  final labels = [
    translator.created,
    translator.announced,
    translator.started,
    translator.finished,
  ];

  int currentIndex = statuses.indexOf(status);
  if (currentIndex == -1) {
    currentIndex = 0;
  }

  List<Widget> buildTimelineWidgets() {
    List<Widget> widgets = [];
    for (int i = 0; i < statuses.length; i++) {
      final bool isActive = i <= currentIndex;
      widgets.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 2,
          children: [
            Icon(
              icons[i],
              color: isActive ? primaryColor : greyColor,
              size: 35,
            ),
            Text(
              labels[i],
              style: TextStyle(
                fontSize: 10,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                color: isActive ? primaryColor : Colors.grey.shade600,
              ),
            ),
          ],
        ),
      );

      if (i < statuses.length - 1) {
        widgets.add(
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              height: 2.5,
              decoration: BoxDecoration(
                color: i < currentIndex ? primaryColor : greyColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        );
      }
    }
    return widgets;
  }

  return Column(children: [Row(children: buildTimelineWidgets())]);
}
