import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

class DateUtil {
  static String getCurrentDatetime() {
    initializeDateFormatting("ja_JP");
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyyMMdd HH:mm:ss', "ja_JP");
    var formatted = formatter.format(now); // DateからString
    return formatted;
  }
}