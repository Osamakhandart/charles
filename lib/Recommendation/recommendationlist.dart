import 'package:flutter/cupertino.dart';

class Recommended {
  var image1;
  String text;
  String text2;
  Color color;

  Recommended(this.image1, this.text, this.text2, this.color);
}

List<Recommended> recommended = [
  Recommended(
      'images/promotionimage1.jpg', '2 Room', 'cleaning', Color(0xFF279AAC)),
  Recommended(
      'images/promotionimage2.jpg', 'Full Home', 'cleaning', Color(0xFF4DCFFF)),
  Recommended('images/promotionimage3.jpg', 'Pool cleaning', 'cleaning',
      Color(0xFF263238))
];
