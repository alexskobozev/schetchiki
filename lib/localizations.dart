import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Schetchiki',
      'water': 'Water',
      'coldwater': 'Cold Water',
      'hotwater': 'Hot Water',
      'electro': 'Electricity',
    },
    'ru': {
      'title': 'Счётчики',
      'water': 'Вода',
      'coldwater': 'Холодная вода',
      'hotwater': 'Горячая вода',
      'electro': 'Электричество',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }

  String get water {
    return _localizedValues[locale.languageCode]['water'];
  }

  String get hotwater {
    return _localizedValues[locale.languageCode]['hotwater'];
  }

  String get coldwater {
    return _localizedValues[locale.languageCode]['coldwater'];
  }

  String get electro {
    return _localizedValues[locale.languageCode]['electro'];
  }
}

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ru'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale));
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
