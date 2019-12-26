import 'package:flutter/material.dart';

class PickedItem extends StatefulWidget {
  PickedItem({this.foodList});
  final List<String> foodList;
  _PickedItem createState() => _PickedItem();
}

class _PickedItem extends State<PickedItem> {
  List foodArr;
  int quantity;
  Map<String, int> fOrder = Map<String, int>();
  @override
  void initState() {
    foodArr = widget.foodList;
    quantity = 0;
    arrange(foodArr);
    super.initState();
  }

  void arrange(List<String> foodItems) {
    for (int i = 0; i < foodItems.length; i++) {
      fOrder.putIfAbsent(foodItems[i], () => 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: foodArr
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Text(element),
                    Text(fOrder[element].toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (fOrder[element] > 0) fOrder[element]--;
                            });
                          },
                          child: Text("-"),
                        ),
                        RaisedButton(
                            onPressed: () {
                              setState(() {
                                fOrder[element]++;
                              });
                            },
                            child: Text("+"))
                      ],
                    )
                  ],
                ),
              ))
          .toList(),
    );
    ;
  }
}
