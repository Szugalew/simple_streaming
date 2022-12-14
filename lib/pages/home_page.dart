import 'package:flutter/material.dart';

import '../data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page body"),
      ),
      body: Container(
        child: const Center(
          child: Text("Home Page Body"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print(await MovieData.loadMovieData());
        },
      ),
    );
  }
}
