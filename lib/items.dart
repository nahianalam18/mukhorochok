import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final List<String> items;
  Items([this.items = const []]);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    //Image.asset('assets/dubai.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
