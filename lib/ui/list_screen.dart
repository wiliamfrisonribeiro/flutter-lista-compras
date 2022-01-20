import 'package:flutter/material.dart';

import 'package:flutter_list_compras/models/item.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Item> items = [
    new Item(title: "teste 01"),
    new Item(title: "teste 04"),
    new Item(title: "teste 05"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Compras"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            final item = items[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: IconTheme(
                  child: Icon(Icons.done),
                  data: IconThemeData(color: Colors.white),
                ),
              ),
              title:
                  Text(item.title!, style: TextStyle(color: Colors.deepPurple)),
            );
          },
          separatorBuilder: (BuildContext context, index) =>
              Divider(color: Colors.deepPurple),
          itemCount: items.length),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
        onPressed: _addItem,

      ),
    );
  }

  _addItem() {

showDialog(context: context, builder: (BuildContext context){

  return null;

})

  }
}
