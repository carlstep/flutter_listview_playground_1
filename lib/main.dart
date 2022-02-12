import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListViews',
          ),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  // backing data
  final europeanCountries = [
    'Canada',
    'China',
    'Denmark',
    'Euro Zone',
    'France',
    'Russia',
    'Switzerland',
    'Turkey',
    'United Kingdom',
    'United States of America'
  ];

  return ListView.builder(
      itemCount: europeanCountries.length,
      itemBuilder: (context, index) {
        return ListTile(
          hoverColor: Colors.amber,
          leading: const Icon(
            Icons.flag,
            size: 40,
          ),
          title: const Text('IsoCurrencyCode'),
          subtitle: Text(europeanCountries[index]),
          trailing: const Text(
            'value',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
        );
      });
}
