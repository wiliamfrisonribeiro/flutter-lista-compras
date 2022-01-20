import 'package:flutter/material.dart';

import 'package:flutter_list_compras/models/item.dart';

import 'add_item.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Item> items = [];

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
                  child: Icon(
                    item.isDone ? Icons.done_all : Icons.done
                  ),
                  data: IconThemeData(color: Colors.white),
                ),
              ),
              title:
                  Text(item.title!, style: TextStyle(color: Colors.deepPurple)),
              onTap: (){
                items[index].isDone = !items[index].isDone;
                setState(() {
                  
                });
                print(items[index].isDone);

              },
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

  void _addItem() async {
    final item = await showDialog<Item>(
        context: context,
        builder: (BuildContext context) {
          return new AddItem();
        });
    items.add(item!);
    setState(() {});
  }
}
