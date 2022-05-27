import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:return_data/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(32),
                child: TextField(
                  controller: textEditingController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String textToSendBack = textEditingController.text;
                  print(textToSendBack);
                  Navigator.pop(context, textToSendBack);
                },
                child: Text('Go to second screen'),
              ),
            ],
          ),
        ));
  }
}
