// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `View 1`
  String get onboardingTitle1 {
    return Intl.message(
      'View 1',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Onboarding and Language Support`
  String get onboardingDescription1 {
    return Intl.message(
      'Onboarding and Language Support',
      name: 'onboardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `View 2`
  String get onboardingTitle2 {
    return Intl.message(
      'View 2',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Onboarding and Language Support`
  String get onboardingDescription2 {
    return Intl.message(
      'Onboarding and Language Support',
      name: 'onboardingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `View 3`
  String get onboardingTitle3 {
    return Intl.message(
      'View 3',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Onboarding and Language Support`
  String get onboardingDescription3 {
    return Intl.message(
      'Onboarding and Language Support',
      name: 'onboardingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get selectedLanguage {
    return Intl.message(
      'English',
      name: 'selectedLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Turkish`
  String get turkishButton {
    return Intl.message(
      'Turkish',
      name: 'turkishButton',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get englishButton {
    return Intl.message(
      'English',
      name: 'englishButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
