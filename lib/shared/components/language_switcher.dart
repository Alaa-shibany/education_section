import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses/config/localization/localization_cubit.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, Locale>(
      builder: (context, currentLocale) {
        return DropdownButton<Locale>(
          value: currentLocale,
          icon: Icon(
            Icons.language,
            color: Theme.of(context).appBarTheme.iconTheme?.color,
          ),
          underline: const SizedBox(),
          items: AppLocalizations.supportedLocales.map((locale) {
            return DropdownMenuItem(
              value: locale,
              child: Text(locale.languageCode.toUpperCase()),
            );
          }).toList(),
          onChanged: (locale) {
            if (locale != null) {
              context.read<LocalizationCubit>().setLocale(locale);
            }
          },
        );
      },
    );
  }
}
