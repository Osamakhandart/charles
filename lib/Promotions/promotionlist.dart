import 'package:flutter/cupertino.dart';

class ProServices {
  var image1;
  String text;
  String text2;

  ProServices(this.image1, this.text, this.text2);
}

List<ProServices> proservices = [
  ProServices('images/promotionimage1.jpg', '2 Room', 'cleaning'),
  ProServices('images/promotionimage2.jpg', 'Full Home', 'cleaning'),
  ProServices('images/promotionimage3.jpg', 'Pool cleaning', 'cleaning')
];
