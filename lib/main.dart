import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: 150.0,
            floating: true,
            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text('Sliver App Bar'),
            ),
          ),
          new SliverList(
              delegate: new SliverChildBuilderDelegate(
                  (context, index) => new ListTile(
                        title: new Text('List item $index'),
                      )))
        ],
      ),
    );
  }
}
