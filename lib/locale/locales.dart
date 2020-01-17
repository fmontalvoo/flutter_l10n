import 'package:flutter/material.dart';
import 'package:internacionalizacion/l10n/messages_all.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

 static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
}

 String get title {
    return Intl.message(
      'Weather Application',
      name: 'title',
      desc: 'Title for the Weather Application',
    );
  }

  String get button {
    return Intl.message(
      'Get the Weather',
      name: 'button',
      desc: 'get weather button',
    );
  }
  
 String get txt {
    return Intl.message(
      'Hello world',
      name: 'txt',
      desc: 'hi',
    );
  }

}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) {
    return false;
  }
}
