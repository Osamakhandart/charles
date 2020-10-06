import 'package:flutter/cupertino.dart';

class PopularServices {
  var image;
  String text;
  String text2;
  Color cardcolor;
  PopularServices(this.image, this.text, this.text2, this.cardcolor);
}

List<PopularServices> pservices = [
  PopularServices(
      'images/Group 10502.png', '2Rooms', 'cleaning', Color(0xFF279AAC)),
  PopularServices(
      'images/Group 10502.png', 'Wash & Iron', 'Laundry', Color(0xFF93E465)),
  PopularServices(
      'images/Group 10502.png', 'Cleaning', '96 near you', Color(0xFFFB4E77))
];
