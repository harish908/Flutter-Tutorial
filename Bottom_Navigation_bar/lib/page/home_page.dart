import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home Page : $counter',
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.add),
        onPressed: () => setState(() {
          counter++;
        }),
      ),
    );
  }
}
