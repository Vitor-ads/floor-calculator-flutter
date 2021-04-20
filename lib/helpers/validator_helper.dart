import 'package:floor_calculator/helpers/parse_helper.dart';

class ValidatorHelper {
  static String isValidText(String text) {
    return text.isEmpty
        ? 'Campo obrigatório'
        : ParseHelper.toDouble(text) <= 0.0
            ? 'valor invalido'
            : null;
  }
}
