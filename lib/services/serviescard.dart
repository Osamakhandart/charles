import 'package:flutter/material.dart';
import 'package:flutter_app/services/serviceslist.dart';
import 'servicesbuilder.dart';

class ServiceCard extends StatefulWidget {
  final Services services;
  final int ind;

  const ServiceCard({Key key, this.ind, this.services}) : super(key: key);
  @override
  ServiceCards createState() => ServiceCards(this.services);
}

class ServiceCards extends State<ServiceCard> {
  final Services services;
  @override
  void initState() {
    // TODO: implement initState

    // img(image);

    super.initState();
    //img(image);
  }

  ServiceCards(this.services);
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
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 2.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 10, top: 20),

          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: services.cardcolor,
            ),
            // padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  services.text,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  services.text2,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              services.image1,
              height: MediaQuery.of(context).size.height / 11,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
