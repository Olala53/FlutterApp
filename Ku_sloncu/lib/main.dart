import 'package:flutter/material.dart';

import 'cities.dart';
import 'cities_detail.dart';
import 'cities_photo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Podróż za jeden uśmiech',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Podróż za jeden uśmiech'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Cities.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CitiesDetail(cities: Cities.samples[index]);
                    },
                  ),
                );
              },
              child: Container(
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: Image.asset(Cities_photo.samples[index].imageUrl, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        Cities_photo.samples[index].label,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}