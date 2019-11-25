import 'package:flutter/material.dart';
import 'Model/Quote.dart';
import 'package:flutter_list_of_data/Card_View/quote_card.dart';

void main() => runApp(new MaterialApp(
      home: new QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
//    'Live as if you were to die tomorrow. Learn as if you were to live forever.'
//        'That which does not kill us makes us stronger.'
//        'Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind.'
//        'We must not allow other people’s limited perceptions to define us.'
//        'Do what you can, with what you have, where you are.'
//        'Be yourself; everyone else is already taken.'

    Quote(
        text:
            'Live as if you were to die tomorrow. Learn as if you were to live forever.',
        author: 'Gaurav Kumar'),
    Quote(
        text: 'That which does not kill us makes us stronger.',
        author: 'Sourav Kumar'),
    Quote(
        text:
            'We must not allow other people’s limited perceptions to define us.',
        author: 'Vishal Kumar'),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          'Awesome Quotes',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
        ),
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete : ()
            {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}
