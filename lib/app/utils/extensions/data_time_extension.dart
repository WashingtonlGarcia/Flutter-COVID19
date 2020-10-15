import 'package:intl/intl.dart';

extension DataTimeExtension on DateTime {
  String format() {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}
