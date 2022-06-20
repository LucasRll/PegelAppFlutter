import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();

  final String title;
  final double padding = 25;
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: Center(
          child: RefreshIndicator(
            onRefresh: _pullRefresh,
            child: ListView(
              padding: EdgeInsets.all(widget.padding),
              children: [
                Container(
                  color: Colors.blue,
                  child: const Placeholder(
                    fallbackHeight: 200,
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: const Text('Pegel entlang des Gewässers'),
                ),

                Container(
                  color: Colors.blue,
                  child: const Placeholder(
                    fallbackHeight: 100,
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: const Text('7-Tage Rückblick'),
                ),
                Container(
                  color: Colors.blue,
                  child: const Placeholder(
                    fallbackHeight: 250,
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Future<void> _pullRefresh() async {
    // TODO
    Future.delayed(Duration(seconds: 2));
  }
}
