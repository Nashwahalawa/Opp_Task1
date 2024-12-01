void main() {
  Holiday holiday1 = Holiday('Independence Day', 4, 'July');
  Holiday holiday2 = Holiday('newyear', 1, 'Junuary');
  Holiday holiday3 = Holiday('Motherday', 21, 'March');
  List<Holiday> holidaies = [holiday1, holiday2, holiday3];
  // print(Holiday.inSameMonth(holiday1, holiday3));

  print(Holiday.inSameMonth(holiday3, holiday2));

  print(Holiday.avgDate(holidaies));
}

class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month) {}

  static bool inSameMonth(Holiday holiday2, Holiday holiday3) {
    if (holiday2.month == holiday3.month) {
      return (true);
    } else {
      return (false);
    }
  }

  static double avgDate(List<Holiday> holidaies) {
    double average = 0;
    for (var holiday in holidaies) {
      average += (holiday.day) / holidaies.length;
    }
    return (average);
  }
}
