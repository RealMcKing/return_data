import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:return_data/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Get text from second screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(32),
                child: Text(text),
              ),
              ElevatedButton(
                onPressed: () {
                  _returnDataFromSecondScreen(context);
                },
                child: Text('Go to second screen'),
              ),
            ],
          ),
        ));
  }

  void _returnDataFromSecondScreen(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => SecondScreen());
    final result = await Navigator.push(context, route);
    print(result);

    setState((){
      text = result;
    });
  }
}
