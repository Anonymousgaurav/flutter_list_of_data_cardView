import 'package:flutter/material.dart';
import 'package:flutter_list_of_data/Model/Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10.0),
            new Text(
              quote.author,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton.icon(
                onPressed:  delete,
                icon: Icon(Icons.delete),
                label: Text('Delete Quote'))
          ],
        ),
      ),
    );
  }
}
