import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.g.dart';
import 'app_localizations_ru.g.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.g.dart';
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
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @saveButtonName.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButtonName;

  /// No description provided for @cancelButtonName.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButtonName;

  /// No description provided for @languageSettingsTop.
  ///
  /// In en, this message translates to:
  /// **'System Language'**
  String get languageSettingsTop;

  /// No description provided for @languageSettingChild.
  ///
  /// In en, this message translates to:
  /// **'Set the language of the application by selecting one of the suggested options'**
  String get languageSettingChild;

  /// No description provided for @systemSettingTop.
  ///
  /// In en, this message translates to:
  /// **'System Settings'**
  String get systemSettingTop;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @navigationTitle.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get navigationTitle;

  /// No description provided for @routesTitle.
  ///
  /// In en, this message translates to:
  /// **'Routes'**
  String get routesTitle;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @fuelConsumptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Fuel'**
  String get fuelConsumptionTitle;

  /// No description provided for @menuTitle.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menuTitle;

  /// No description provided for @accountTitle.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountTitle;

  /// No description provided for @darkModeTitile.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkModeTitile;

  /// No description provided for @dashboardTitle.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboardTitle;

  /// No description provided for @themeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeTitle;

  /// No description provided for @languageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageTitle;

  /// No description provided for @soundsTitle.
  ///
  /// In en, this message translates to:
  /// **'Sounds'**
  String get soundsTitle;

  /// No description provided for @termsOfUseTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get termsOfUseTitle;

  /// No description provided for @themeSettingTop.
  ///
  /// In en, this message translates to:
  /// **'Application theme'**
  String get themeSettingTop;

  /// No description provided for @themeSettingChild.
  ///
  /// In en, this message translates to:
  /// **'Choose the most applicable application theme that matches current environment'**
  String get themeSettingChild;

  /// No description provided for @systemThemeTitleCard.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemThemeTitleCard;

  /// No description provided for @lightThemeTitleCard.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightThemeTitleCard;

  /// No description provided for @darkThemeTitleCard.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkThemeTitleCard;

  /// No description provided for @soundSettingsTop.
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get soundSettingsTop;

  /// No description provided for @soundSettingsChild.
  ///
  /// In en, this message translates to:
  /// **'Customize the required\n sound settings'**
  String get soundSettingsChild;

  /// No description provided for @notificationTitleSound.
  ///
  /// In en, this message translates to:
  /// **'Notification sound'**
  String get notificationTitleSound;

  /// No description provided for @termsSettingsTop.
  ///
  /// In en, this message translates to:
  /// **'Rules and conventions'**
  String get termsSettingsTop;

  /// No description provided for @termsSettingsChild.
  ///
  /// In en, this message translates to:
  /// **'Read the main rules\n and agreements'**
  String get termsSettingsChild;

  /// No description provided for @privacyPoliceTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy police'**
  String get privacyPoliceTitle;

  /// No description provided for @termsOfUseTitleSettings.
  ///
  /// In en, this message translates to:
  /// **'Terms of use '**
  String get termsOfUseTitleSettings;

  /// No description provided for @themeSystemSynchronization.
  ///
  /// In en, this message translates to:
  /// **'Synchronization with system'**
  String get themeSystemSynchronization;

  /// No description provided for @systemThemeDescriptionCard.
  ///
  /// In en, this message translates to:
  /// **'Automatic themes changes'**
  String get systemThemeDescriptionCard;

  /// No description provided for @lightThemeDescriptionCard.
  ///
  /// In en, this message translates to:
  /// **'Recomended for daylight environment'**
  String get lightThemeDescriptionCard;

  /// No description provided for @darkThemeDescriptionCard.
  ///
  /// In en, this message translates to:
  /// **'Recomended for twilight and night environment'**
  String get darkThemeDescriptionCard;

  /// No description provided for @routePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Routes'**
  String get routePageTitle;

  /// No description provided for @arrivalPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Arrival time'**
  String get arrivalPageTitle;

  /// No description provided for @cargoPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Cargo'**
  String get cargoPageTitle;

  /// No description provided for @speedModePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Speed Mode'**
  String get speedModePageTitle;

  /// No description provided for @controlPointPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Control points '**
  String get controlPointPageTitle;

  /// No description provided for @sonarWidgetTitle.
  ///
  /// In en, this message translates to:
  /// **'SONAR'**
  String get sonarWidgetTitle;

  /// No description provided for @metersTitle.
  ///
  /// In en, this message translates to:
  /// **'Meters'**
  String get metersTitle;

  /// No description provided for @footTitle.
  ///
  /// In en, this message translates to:
  /// **'Foots'**
  String get footTitle;

  /// No description provided for @phatomsTitle.
  ///
  /// In en, this message translates to:
  /// **'Fathoms'**
  String get phatomsTitle;

  /// No description provided for @serviceConnection.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Venom service'**
  String get serviceConnection;

  /// No description provided for @serviceNotFound.
  ///
  /// In en, this message translates to:
  /// **'Failed: Service was not found'**
  String get serviceNotFound;

  /// No description provided for @retryButton.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryButton;

  /// No description provided for @deleteRouteHeader.
  ///
  /// In en, this message translates to:
  /// **'Delete route'**
  String get deleteRouteHeader;

  /// No description provided for @deleteRouteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the selected route?'**
  String get deleteRouteConfirm;

  /// No description provided for @arrivalHeader.
  ///
  /// In en, this message translates to:
  /// **'Arrival'**
  String get arrivalHeader;

  /// No description provided for @departureHeader.
  ///
  /// In en, this message translates to:
  /// **'Departure'**
  String get departureHeader;

  /// No description provided for @downloadHeader.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadHeader;

  /// No description provided for @addNewRouteHeader.
  ///
  /// In en, this message translates to:
  /// **'Add new route'**
  String get addNewRouteHeader;

  /// No description provided for @routeListHeader.
  ///
  /// In en, this message translates to:
  /// **'List of routes'**
  String get routeListHeader;

  /// No description provided for @arrivalHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the sending port'**
  String get arrivalHintText;

  /// No description provided for @departureHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter the destination port'**
  String get departureHintText;

  /// No description provided for @newRouteHeader.
  ///
  /// In en, this message translates to:
  /// **'New route'**
  String get newRouteHeader;

  /// No description provided for @addRouteButton.
  ///
  /// In en, this message translates to:
  /// **'Add route'**
  String get addRouteButton;

  /// No description provided for @uploadRoutePart1.
  ///
  /// In en, this message translates to:
  /// **'Click or drop here'**
  String get uploadRoutePart1;

  /// No description provided for @uploadRoutePart2.
  ///
  /// In en, this message translates to:
  /// **'to upload the new file'**
  String get uploadRoutePart2;

  /// No description provided for @uploadRoutePart3.
  ///
  /// In en, this message translates to:
  /// **'with route'**
  String get uploadRoutePart3;

  /// No description provided for @connectButton.
  ///
  /// In en, this message translates to:
  /// **'connect'**
  String get connectButton;

  /// No description provided for @ip_address_field.
  ///
  /// In en, this message translates to:
  /// **'ip address'**
  String get ip_address_field;

  /// No description provided for @port_field.
  ///
  /// In en, this message translates to:
  /// **'port'**
  String get port_field;

  /// No description provided for @not_select_file.
  ///
  /// In en, this message translates to:
  /// **'You have not selected a route file'**
  String get not_select_file;

  /// No description provided for @not_select_route_points.
  ///
  /// In en, this message translates to:
  /// **'You have not selected a departure or arrival point'**
  String get not_select_route_points;

  /// No description provided for @add_route_field.
  ///
  /// In en, this message translates to:
  /// **'Adding a route'**
  String get add_route_field;

  /// No description provided for @duitTitle.
  ///
  /// In en, this message translates to:
  /// **'Duit'**
  String get duitTitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
