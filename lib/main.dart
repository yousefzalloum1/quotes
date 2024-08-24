import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: quotelist(),
    ));

class quotelist extends StatefulWidget {
  const quotelist({super.key});

  @override
  State<quotelist> createState() => _quotelistState();
}

class _quotelistState extends State<quotelist> {
  List<Quote> quotes = [
    Quote(author: 'mahmoud darwish', text: 'omarabu maizer is hurt'),
    Quote(author: 'mahmoud darwish', text: 'my eiess is hurt'),
    Quote(author: 'mahmoud darwish', text: 'my leg is hurt')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesone Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
