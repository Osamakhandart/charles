import 'package:flutter/material.dart';
import 'package:flutter_app/Popular%20services/popularservicecard.dart';
import 'package:flutter_app/Promotions/promotioncard].dart';
import 'package:flutter_app/Promotions/promotionlist.dart';

class ProServicebuilder extends StatefulWidget {
  @override
  _ProServicebuilderState createState() => _ProServicebuilderState();
}

class _ProServicebuilderState extends State<ProServicebuilder> {
  List<ProServices> proservicesvar;
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    proservicesvar = proservices;
  }

  @override
  Widget build(BuildContext context) {
    if (proservices == null) proservices = [];
    return Container(
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: proservices.length,
          itemBuilder: (_, index) {
            return PromotionCard(
              proservices: proservices[index],
            );
          }),
    );
  }
}
