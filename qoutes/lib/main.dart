import 'package:flutter/material.dart';
import 'qoute.dart';

void main() =>
  runApp(const MaterialApp(
    home: quotes(),
  ));

class quotes extends StatefulWidget {
  const quotes({Key? key}) : super(key: key);

  @override
  State<quotes> createState() => _quotesState();
}

class _quotesState extends State<quotes> {

  List<Quote> quotes = [
    Quote(text: 'Dont let yesterday take up too much of today', author: 'me'),
    Quote(text: 'Experience is a hard teacher because she gives the test first, the lesson afterwards', author: 'me'),
    Quote(text: 'Either you run the day or the day runs you', author: 'me')

  ];
  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('quotes'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black
              )
            ),
            SizedBox(height:6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black12
              )
            )
          ],
        ),
      ),
    );
  }
}


