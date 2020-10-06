import 'package:flutter/material.dart';
import 'package:flutter_app/Popular services/popularserviceslist.dart';
import 'package:flutter_app/Popular services/Popularservicebuilder.dart';

class PserviceCard extends StatefulWidget {
  final PopularServices pservices;
  final int ind;

  const PserviceCard({Key key, this.ind, this.pservices}) : super(key: key);
  @override
  PserviceCards createState() => PserviceCards(this.pservices);
}

class PserviceCards extends State<PserviceCard> {
  final PopularServices pservices;
  @override
  void initState() {
    // TODO: implement initState

    // img(image);

    super.initState();
    //img(image);
  }

  PserviceCards(this.pservices);
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
        padding: EdgeInsets.only(right: 20),
        // height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width / 2.5,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: pservices.cardcolor,
            ),
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Image.asset(pservices.image),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 14,
                  child: Column(
                    children: [
                      Text(
                        pservices.text,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        pservices.text2,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
