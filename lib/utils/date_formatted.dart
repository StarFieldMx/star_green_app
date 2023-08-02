import 'package:intl/intl.dart';

String formatEpochDate(int millisecondsSinceEpoch) {
  DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);

  // Definir el formato deseado
  String formattedDate = DateFormat('EEE, MMM d h:mm a').format(dateTime);

  return formattedDate;
}
