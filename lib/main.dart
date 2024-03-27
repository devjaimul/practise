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
        backgroundColor: Colors.grey.shade200,
        body: Column(
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
            Row(
              children: [
                Text(
                  'hello world',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.teal,
                      decoration: TextDecoration.underline),
                ),
                Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                )
              ],
            )
          ],
        ),
        appBar: AppBar(
          title: Center(
              child: Text(
            'app bar',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.green,
          leading:IconButton( onPressed: ()
          {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('what did you wnat to add'),
                // backgroundColor: Colors.cyan,
                duration: Duration(seconds: 2),
              ),
            );
          },


          icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
                onPressed: ()
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('what did you wnat to add'),
                     // backgroundColor: Colors.cyan,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.h_plus_mobiledata,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
