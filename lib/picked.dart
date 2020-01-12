import 'package:flutter/material.dart';
import './order.dart';

class PickedItem extends StatefulWidget {
  final List<String> foodList;
  PickedItem({this.foodList});
  _PickedItem createState() => _PickedItem();
}

class _PickedItem extends State<PickedItem> {
  List<String> foodArr;
  int quantity;
  var ca = ListOrder();
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
                    //  Text(ca(element, fOrder[element])),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton.icon(
                              onPressed: () => setState(() {
                                    if (fOrder[element] > 0) fOrder[element]--;
                                  }),
                              label: Text('Remove'),
                              icon: Icon(Icons.remove)),
                          RaisedButton.icon(
                              onPressed: () => setState(() {
                                    fOrder[element]++;
                                  }),
                              label: Text('Add'),
                              icon: Icon(Icons.add))
                        ])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
