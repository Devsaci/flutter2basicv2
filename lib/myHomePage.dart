import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.green,
              child: TextField(
                decoration: InputDecoration(
                    labelText: "labelText",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    hintText: "hintText",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "labelText",
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: "hintText",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.deepPurple,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "labelText",
                  hintText: "hintText",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
