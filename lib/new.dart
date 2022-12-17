import 'dart:ui';

import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New event"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          //SizedBox(height: 30),
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(9.2),
              child: TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.black26,
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 500,
                    borderRadius: const BorderRadius.all(Radius.circular(400)),
                    borderSide:
                        BorderSide(width: 3, color: Colors.purpleAccent),
                  ),
                  hintText: 'Add new Event',
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.black,
                  ),
                ),
                controller: _textEditingController,
              ),
            ),
            Builder(builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    String newEventtext = _textEditingController.text;
                    Navigator.of(context).pop(newEventtext);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.purple,
                    padding:
                        EdgeInsets.symmetric(horizontal: 170, vertical: 10),
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      backgroundColor: Colors.purpleAccent[100],
    );
  }
}
