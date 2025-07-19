// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get welcome => 'مرحباً';

  @override
  String get signin_to_continue => 'سجّل الدخول للمتابعة إلى حسابك';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get remember_me => 'تذكرني';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get please_enter_password => 'رجاء ادخل كلمة السر';

  @override
  String get please_enter_email => 'رجاء ادخل البريد الالكتروني';
}
