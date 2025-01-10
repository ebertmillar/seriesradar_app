
import 'package:intl/intl.dart';

class HumanFormats {


  static String number( double number, [ int decimals = 1 ] ) {

    return NumberFormat.compactCurrency(
      decimalDigits: decimals,
      symbol: '',
      locale: 'en'
    ).format(number);
  }

  // Formato para fecha y hora
  static String dateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }

  static String shortDate(DateTime dateTime) {
    return DateFormat('dd-MM-yyyy').format(dateTime); // Ejemplo: "20-10-2024"
  }

  

}