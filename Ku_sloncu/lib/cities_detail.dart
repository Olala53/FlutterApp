import 'package:flutter/material.dart';
import 'cities.dart';
import 'cities_photo.dart';

class CitiesDetail extends StatefulWidget {
  final Cities cities;

  const CitiesDetail({
    Key? key,
    required this.cities,
  }) : super(key: key);

  @override
  State<CitiesDetail> createState() {
    return _CitiesDetailState();
  }
}

class _CitiesDetailState extends State<CitiesDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.cities.label2)),
        backgroundColor: Colors.black12,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 600,
                width: double.infinity,
                child: Image(
                  image: AssetImage(widget.cities.imageUrl),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(60.0),
                child: Text(
                  widget.cities.text,
                  style: const TextStyle(
                      fontSize: 23,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






