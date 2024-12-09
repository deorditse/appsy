import 'package:flutter/material.dart';

///todo убрать отсбюда на слой бизнес логики
enum AllLocale {
  ru,
  en,
}

class LocaleProvider with ChangeNotifier {
  Locale locale = Locale(AllLocale.ru.name);

  void setLocale(AllLocale locale) {
    this.locale = Locale(locale.name);
    notifyListeners();
  }
}
