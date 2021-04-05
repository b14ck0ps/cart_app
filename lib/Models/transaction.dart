import 'package:flutter/foundation.dart';

class Transcion {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transcion(
      {@required this.amount,
      @required this.date,
      @required this.id,
      @required this.title});
}
