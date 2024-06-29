import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String name;
  final String batch;
  final String dep;
  const ListItem({required this.name, required this.batch, required this.dep});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: ListTile(
          title: Text(widget.name),
          subtitle: Text('${widget.batch}/ ${widget.dep}'),
          trailing: Icon(Icons.shopping_cart),
        ));
  }
}
