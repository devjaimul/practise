import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'hello world',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.teal,
                  decoration: TextDecoration.underline),
            ),
            Row(children: [
              Text(
                'hello world',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.teal,
                    decoration: TextDecoration.underline),
              ),
            ],)
          ],
        ),

        appBar: AppBar(title: Text('app bar'),),

      ),
    );
  }
}
