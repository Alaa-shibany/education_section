import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @signin_to_continue.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue to your account'**
  String get signin_to_continue;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @remember_me.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get remember_me;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @please_enter_password.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get please_enter_password;

  /// No description provided for @please_enter_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get please_enter_email;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @subjects.
  ///
  /// In en, this message translates to:
  /// **'Subjects'**
  String get subjects;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @last_update.
  ///
  /// In en, this message translates to:
  /// **'Last update'**
  String get last_update;

  /// No description provided for @add_new.
  ///
  /// In en, this message translates to:
  /// **'Add New'**
  String get add_new;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @manage_subject.
  ///
  /// In en, this message translates to:
  /// **'Manage Subject'**
  String get manage_subject;

  /// No description provided for @edit_subject.
  ///
  /// In en, this message translates to:
  /// **'Edit subject'**
  String get edit_subject;

  /// No description provided for @add_new_subject.
  ///
  /// In en, this message translates to:
  /// **'Add new subject'**
  String get add_new_subject;

  /// No description provided for @subject_name.
  ///
  /// In en, this message translates to:
  /// **'Subject name'**
  String get subject_name;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @confirm_deletion.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get confirm_deletion;

  /// No description provided for @are_you_sure_delete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete'**
  String get are_you_sure_delete;

  /// No description provided for @cannot_be_undo.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone'**
  String get cannot_be_undo;

  /// No description provided for @teachers.
  ///
  /// In en, this message translates to:
  /// **'Teachers'**
  String get teachers;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @student.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get student;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get course;

  /// No description provided for @courses.
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get courses;

  /// No description provided for @register_requests.
  ///
  /// In en, this message translates to:
  /// **'Register requests'**
  String get register_requests;

  /// No description provided for @down_payment.
  ///
  /// In en, this message translates to:
  /// **'Down payment'**
  String get down_payment;

  /// No description provided for @admins.
  ///
  /// In en, this message translates to:
  /// **'Admins'**
  String get admins;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @add_new_admin.
  ///
  /// In en, this message translates to:
  /// **'Add new admin'**
  String get add_new_admin;

  /// No description provided for @edit_admin.
  ///
  /// In en, this message translates to:
  /// **'Edit admin'**
  String get edit_admin;

  /// No description provided for @add_new_teacher.
  ///
  /// In en, this message translates to:
  /// **'Add new teacher'**
  String get add_new_teacher;

  /// No description provided for @edit_teacher.
  ///
  /// In en, this message translates to:
  /// **'Edit teacher'**
  String get edit_teacher;

  /// No description provided for @permission.
  ///
  /// In en, this message translates to:
  /// **'Permission'**
  String get permission;

  /// No description provided for @no_permission_yet.
  ///
  /// In en, this message translates to:
  /// **'No permission added yet'**
  String get no_permission_yet;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @please_enter_name.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get please_enter_name;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @paid_dues.
  ///
  /// In en, this message translates to:
  /// **'Paid Dues'**
  String get paid_dues;

  /// No description provided for @pending_dues.
  ///
  /// In en, this message translates to:
  /// **'Pending Dues'**
  String get pending_dues;

  /// No description provided for @session_date.
  ///
  /// In en, this message translates to:
  /// **'Session date'**
  String get session_date;

  /// No description provided for @dues.
  ///
  /// In en, this message translates to:
  /// **'Dues'**
  String get dues;

  /// No description provided for @teacher.
  ///
  /// In en, this message translates to:
  /// **'Teacher'**
  String get teacher;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @dues_pending_transfer.
  ///
  /// In en, this message translates to:
  /// **'Dues pending transfer'**
  String get dues_pending_transfer;

  /// No description provided for @transfer_of_dues.
  ///
  /// In en, this message translates to:
  /// **'Transfer of Dues'**
  String get transfer_of_dues;

  /// No description provided for @no_dues_for_now.
  ///
  /// In en, this message translates to:
  /// **'No dues for now'**
  String get no_dues_for_now;

  /// No description provided for @show_history.
  ///
  /// In en, this message translates to:
  /// **'Show history'**
  String get show_history;

  /// No description provided for @financial_treasury.
  ///
  /// In en, this message translates to:
  /// **'Financial treasury'**
  String get financial_treasury;

  /// No description provided for @study_materials.
  ///
  /// In en, this message translates to:
  /// **'Study materials'**
  String get study_materials;

  /// No description provided for @created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get created;

  /// No description provided for @announced.
  ///
  /// In en, this message translates to:
  /// **'Announced'**
  String get announced;

  /// No description provided for @started.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get started;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @general_info.
  ///
  /// In en, this message translates to:
  /// **'Genreral info'**
  String get general_info;

  /// No description provided for @not_specified.
  ///
  /// In en, this message translates to:
  /// **'Not specified'**
  String get not_specified;

  /// No description provided for @success_rate.
  ///
  /// In en, this message translates to:
  /// **'Success rate'**
  String get success_rate;

  /// No description provided for @register_price.
  ///
  /// In en, this message translates to:
  /// **'Register price'**
  String get register_price;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @teacher_salary.
  ///
  /// In en, this message translates to:
  /// **'Teacher salary'**
  String get teacher_salary;

  /// No description provided for @payment_deadline.
  ///
  /// In en, this message translates to:
  /// **'Payment deadline'**
  String get payment_deadline;

  /// No description provided for @session.
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get session;

  /// No description provided for @sync_attendance.
  ///
  /// In en, this message translates to:
  /// **'Sync attendance'**
  String get sync_attendance;

  /// No description provided for @sessions.
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get sessions;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
