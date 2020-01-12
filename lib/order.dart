import 'package:flutter/material.dart';
import './main.dart';
import './picked.dart';

class ListOrder extends StatelessWidget {
  final List<String> orderItems;
  ListOrder({this.orderItems});
  // _ListOrder createState() => _ListOrder();
//}

// class _ListOrder extends State<ListOrder> {
  // List<String> itemsRec = [];
  // @override
  // void initState() {
  //   itemsRec = widget.orderItems;
  //   super.initState();
  // }
  List<String> orderArr = List<String>();
  call(String name, int quantity) {
    print("$name has $quantity orders");

    return 'Ahoy';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mukhorochokh')),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: <Widget>[
            // PickedItem(foodList: itemsRec),
            PickedItem(foodList: orderItems),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text('Back')),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text('Confirm')),
          ],
        ))));
  }
}
