import 'package:models/index.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html;

class GetSiteInfo {
  // const GetSiteInfo._();

  // factory GetSiteInfo() => GetSiteInfo._();

  static const AppIconModel _error = AppIconModel(
    id: '',
    name: '',
    iconPath: '',
    url: '',
    error: ErrorModel(
      code: 404,
      description: "Проверьте правильность введенного url",
    ),
  );

  static Future<AppIconModel> buUrl(String url) async {
    try {
      // Проверка и добавление префикса https:// если его нет
      final normalizedUrl = url.startsWith('http') ? url : 'https://$url';

      // Получение HTML-страницы
      final response = await http.get(Uri.parse(normalizedUrl));

      if (response.statusCode != 200) {
        return _error.copyWith(
            error: _error.error!.copyWith(
          description: "Сайт не нвйден",
        ));
      }

      // Парсинг HTML
      final document = html.parse(response.body);

      // Извлечение заголовка сайта
      final title = document.querySelector('title')?.text.trim() ?? 'No title';

      // Поиск иконки сайта
      String? iconUrl;
      final iconElements = document.querySelectorAll(
        'link[rel~="icon"], link[rel="apple-touch-icon"], link[rel="shortcut icon"]',
      );
      if (iconElements.isNotEmpty) {
        // Сортируем элементы по атрибуту "sizes" (если указан)
        iconElements.sort((a, b) {
          final sizeA = a.attributes['sizes'] ?? '';
          final sizeB = b.attributes['sizes'] ?? '';
          return _compareSizes(sizeA, sizeB);
        });

        // Берем первый (самый большой) элемент
        final bestIcon = iconElements.first;
        final href = bestIcon.attributes['href'];
        if (href != null) {
          iconUrl = href.startsWith('http')
              ? href
              : Uri.parse(normalizedUrl).resolve(href).toString();
        }
      }
      return AppIconModel(
        id: normalizedUrl,
        name: title,
        iconPath: iconUrl,
        url: normalizedUrl,
      );
    } catch (e) {
      return _error;
    }
  }

  // Вспомогательная функция для сравнения размеров
  static int _compareSizes(String sizeA, String sizeB) {
    sizeToInt(String size) {
      final dimensions = size.split('x');
      if (dimensions.length == 2) {
        final width = int.tryParse(dimensions[0]) ?? 0;
        final height = int.tryParse(dimensions[1]) ?? 0;
        return width * height;
      }
      return 0;
    }

// Сравниваем по убыванию
    return sizeToInt(sizeB).compareTo(sizeToInt(sizeA));
  }
}
