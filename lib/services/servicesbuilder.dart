import 'package:flutter/material.dart';
import 'package:flutter_app/services/serviceslist.dart';
import 'package:flutter_app/services/serviescard.dart';

class Servicebuilder extends StatefulWidget {
  @override
  _ServicebuilderState createState() => _ServicebuilderState();
}

class _ServicebuilderState extends State<Servicebuilder> {
  List<Services> servicesvar;
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    servicesvar = services;
  }

  @override
  Widget build(BuildContext context) {
    if (services == null) services = [];
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: services.length,
          itemBuilder: (_, index) {
            return ServiceCard(
              services: services[index],
            );
          }),
    );
  }
}
