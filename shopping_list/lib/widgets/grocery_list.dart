import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> groceryItems = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          var item = groceryItems[index];
          return ListTile(
            title: Text(item.name),
            trailing: Text('Quantity: ${item.quantity}'),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: SizedBox(
                width: 30,
                height: 30,
                child: ColoredBox(color: item.category.color),
                
              ),
            ),
          );
        },
      );
  }
}