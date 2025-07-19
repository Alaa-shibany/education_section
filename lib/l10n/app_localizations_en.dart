// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome';

  @override
  String get signin_to_continue => 'Sign in to continue to your account';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get remember_me => 'Remember me';

  @override
  String get login => 'Login';

  @override
  String get please_enter_password => 'Please enter your password';

  @override
  String get please_enter_email => 'Please enter your email';
}
