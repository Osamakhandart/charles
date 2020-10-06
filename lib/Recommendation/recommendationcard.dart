import 'package:flutter/material.dart';
import 'recommendationlist.dart';

class RecommendedCard extends StatefulWidget {
  final Recommended recommended;
  final int ind;

  const RecommendedCard({Key key, this.ind, this.recommended})
      : super(key: key);
  @override
  Recommendedone createState() => Recommendedone(this.recommended);
}

class Recommendedone extends State<RecommendedCard> {
  final Recommended recommended;
  @override
  void initState() {
    // TODO: implement initState

    // img(image);

    super.initState();
    //img(image);
  }

  Recommendedone(this.recommended);
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
      padding: EdgeInsets.only(left: 10, bottom: 5),
      margin: EdgeInsets.only(right: 20),
      height: MediaQuery.of(context).size.height / 1.1,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: recommended.color,
        // image: DecorationImage(
        //   image: AssetImage(recommended.image1),
        //   // image: const DecorationImage(
        //   //   image:Image.asset(name);
        //   fit: BoxFit.cover,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 10,
            child: Image.asset('images/bottomimage.jpg'),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 14,
              child: Column(children: [
                Text(
                  recommended.text,
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  recommended.text2,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ]))
        ],
      ),
    );
  }
}
