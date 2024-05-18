import 'package:intl/intl.dart';

class DateFormatter {
  static String dayName(int day) {
    String result = "";
    switch ((day % 7) + 1) {
      case 1:
        result = "Monday";
        break;
      case 2:
        result = "Tuesday";
        break;
      case 3:
        result = "Wednesday";
        break;
      case 4:
        result = "Thursday";
        break;
      case 5:
        result = "Friday";
        break;
      case 6:
        result = "Saturday";
        break;
      case 7:
        result = "Sunday";
        break;
    }
    return result;
  }

  static String monthName(int month) {
    String result = "";
    switch (month) {
      case 1:
        result = "January";
      case 2:
        result = "February";
      case 3:
        result = "March";
      case 4:
        result = "April";
      case 5:
        result = "May";
      case 6:
        result = "June";
      case 7:
        result = "July";
      case 8:
        result = "August";
      case 9:
        result = "September";
      case 10:
        result = "October";
      case 11:
        result = "November";
      case 12:
        result = "December";
    }

    return result;
  }

  static String toDayMonthYear({required DateTime dateTime}) {
    DateTime toLocal = dateTime.toLocal();
    return "${dayName(toLocal.day)} ${monthName(toLocal.month)} ${toLocal.year}";
  }

  static String toDayMonthYearWithHourMinute({required DateTime dateTime}) {
    DateTime toLocal = dateTime.toLocal();
    return DateFormat('dd MMMM yyyy HH:mm').format(toLocal);
  }

  static String toDayMonthWithHourMinute({required DateTime dateTime}) {
    DateTime toLocal = dateTime.toLocal();
    return DateFormat('dd MMMM HH:mm').format(toLocal);
  }

  static String toNumberDayMonthWithDayName({required DateTime dateTime}) {
    DateTime toLocal = dateTime.toLocal();
    return "${toLocal.day} ${monthName(toLocal.month)}, ${dayName(toLocal.day)}";
  }

  static String toAllNumberDayMonthYear({DateTime? dateTime}) {
    if (dateTime == null) {
      return "";
    }
    DateTime toLocal = dateTime.toLocal();
    return DateFormat("dd.MM.yyyy").format(toLocal);
  }

  static String toAllNumberDayMonthYearHourMinute({required DateTime dateTime}) {
    // 07.05.2021 12:00
    DateTime toLocal = dateTime.toLocal();
    return DateFormat("dd.MM.yyyy HH:mm").format(toLocal);
  }

  static String toHourMinute({required DateTime dateTime}) {
    DateTime toLocal = dateTime.toLocal();
    return DateFormat('HH:mm').format(toLocal);
  }
}
