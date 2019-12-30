import 'package:flutter/material.dart';

class NewTransction extends StatelessWidget {
  final Function addNewTX;
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  // Call function in constructor
  NewTransction(this.addNewTX);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Price'),
              controller: priceController,
            ),
            FlatButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onPressed: () {
                addNewTX(
                  titleController.text,
                  double.parse(priceController.text),
                );
              },
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
