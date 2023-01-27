import 'package:intl/intl.dart';

abstract class UtilsServices {
  static String priceCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(
      locale: 'en_US',
    );
    return numberFormat.format(price);
  }
}
