import 'package:flutter/material.dart';
import 'package:flutter_app/Promotions/promotionlist.dart';
import 'package:flutter_app/Promotions/promotionbuilder.dart';

class PromotionCard extends StatefulWidget {
  final ProServices proservices;
  final int ind;

  const PromotionCard({Key key, this.ind, this.proservices}) : super(key: key);
  @override
  PromotionCards createState() => PromotionCards(this.proservices);
}

class PromotionCards extends State<PromotionCard> {
  final ProServices proservices;
  @override
  void initState() {
    // TODO: implement initState

    // img(image);

    super.initState();
    //img(image);
  }

  PromotionCards(this.proservices);
  String img(image) {
    return image;
  }

//  Function ontap(){
//    Navigator.of(context).push(MaterialPageRoute(builder:(_)=>check()));
//  }
  @override
  Widget build(BuildContext context) {
    var _counter;
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 10),
      margin: EdgeInsets.only(right: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: AssetImage(proservices.image1),
            // image: const DecorationImage(
            //   image:Image.asset(name);
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            proservices.text,
            style: TextStyle(
                fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            proservices.text2,
            style: TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
