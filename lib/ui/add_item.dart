import 'package:flutter/material.dart';
import 'package:flutter_list_compras/models/item.dart';

class AddItem extends StatelessWidget {
  final itemC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add item"),
      content: TextField(
        autocorrect: true,
        controller: itemC,
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancelar')),
        TextButton(
            onPressed: () {
              final item = new Item(title:  itemC.value.text);
               itemC.clear();
              Navigator.of(context).pop(item);

            },
            child: Text('Add')),
      ],
    );
  }
}
