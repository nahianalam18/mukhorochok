import 'package:flutter/material.dart';
import './items.dart';
import './order.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Mukhorochok';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> selectItems = [];
  void modItem(String name, int type) {
    if (type == 1) selectItems.remove(name);
    int check = 0;
    for (int i = 0; i < selectItems.length; i++) {
      if (selectItems[i] == name) {
        check = 1;
        break;
      }
    }
    if (check != 1 && type == 0) selectItems.add(name);
  }

  void removeItem(String name) {
    int check = 0;
    selectItems.remove(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mukhorochok')),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Center(
            child: Items(modItem),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListOrder(
                            orderItems: selectItems,
                          )));
            },
            child: Text('Next'),
          ),
        ]),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('View Set Menu'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Orders'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
