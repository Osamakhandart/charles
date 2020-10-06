import 'package:flutter/cupertino.dart';

class Services {
  var image1;
  String text;
  String text2;
  Color cardcolor;
  Services(this.image1, this.text, this.text2, this.cardcolor);
}

List<Services> services = [
  Services(
      'images/Group 10502.png', 'Cleaning', '96 near you', Color(0xFF4DCFFF)),
  Services('images/icon@2x.png', 'Cleaning', '98 near you', Color(0xFFFB4E77)),
  Services('images/service2.png', 'Cleaning', '99 near you', Color(0xFF1BD741))
];
