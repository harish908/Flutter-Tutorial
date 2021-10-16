import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Feed'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Feed Page',
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
