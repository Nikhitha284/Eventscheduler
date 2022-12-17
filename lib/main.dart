//import 'dart:html';

import 'package:eventscheduler/new.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [
   // Text("jj"),
   // Text(hahah),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Event scheduler"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),

        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.white60,
                child: Center(
                  child: _list[index],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        backgroundColor: Colors.purpleAccent[100],
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () async {
                String newtext = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(newtext));
                });
              },
              child: Icon(Icons.add,
              color: Colors.white,),
            );
          },
        ),
      ),
    );
  }
}
