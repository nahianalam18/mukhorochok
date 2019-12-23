import 'package:flutter/material.dart';

class PickedItem extends StatefulWidget {
  PickedItem({this.foodList});
  final List<String> foodList;
  _PickedItem createState() => _PickedItem();
}

class _PickedItem extends State<PickedItem> {
  List foodArr;
  int quantity;
  @override
  void initState() {
    foodArr = widget.foodList;
    quantity = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: foodArr
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Text(element),
                    Text(quantity.toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          child: Text("+"),
                        ),
                        RaisedButton(
                            onPressed: () {
                              setState(() {
                                if (quantity > 0) quantity--;
                              });
                            },
                            child: Text("-"))
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
