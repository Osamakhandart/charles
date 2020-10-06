import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'services/servicesbuilder.dart';
import 'Popular services/Popularservicebuilder.dart';
import 'Promotions/promotionbuilder.dart';
import 'Recommendation/recommendationbuilder.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height / 5,
                  width: size.width / 2.5,
                  margin: EdgeInsets.only(left: 220),
                  child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      'images/logoo.jpg',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20, left: 25),
                        height: size.height / 10,
                        width: size.width / 1.2,
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.perm_identity,
                                color: Colors.black87,
                              ),
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.bottomRight,
                                    // padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Hi, Charles',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    child: Text(
                                  'LYTTON PARK, Toronto Canada',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )),
                              ],
                            )
                          ],
                        )),
                    Container(
                      width: size.width / 1.1,
                      height: size.height / 18,
                      padding: EdgeInsets.only(right: 20, top: 5, left: 25),
                      child: TextField(
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Looking for something',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3.6,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Services',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Servicebuilder(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3.3,
                      width: size.width,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Popular Services',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'In your area Linton park',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          PServicebuilder(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3,
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Promotion',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ),
                          ProServicebuilder(),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Recommendation',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Recommendationbuilder(),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
