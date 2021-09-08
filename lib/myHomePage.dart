import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //box n 1 email
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.lime,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail_outline,
                        size: 30,
                        color: Colors.black,
                      ),
                      labelText: "Adress Mail",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      hintText: "Enter eMail",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              //box n 1 Passworde
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.orange,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.password,
                        size: 30,
                        color: Colors.black,
                      ),
                      labelText: "Passeword",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      hintText: "Enter Passeword",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              //box n 2 email
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.lime,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail_outline,
                        size: 30,
                        color: Colors.black,
                      ),
                      labelText: "Adress Mail",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      hintText: "Enter eMail",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              //box n 2 Passworde
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.orange,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible? Icons.visibility_off: Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: (){
                          setState(() {
                          passwordVisible=!passwordVisible;
                          });
                        },
                      ),
                      labelText: "Passeword",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      hintText: "Enter Passeword",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: passwordVisible,
                ),
              ),
              //box n 3 email
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.lime,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail_outline,
                        size: 30,
                        color: Colors.black,
                      ),
                      labelText: "Adress Mail",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      hintText: "Enter eMail",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              //box n 3 Passworde
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.orange,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.password,
                        size: 30,
                        color: Colors.black,
                      ),
                      labelText: "Passeword",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      hintText: "Enter Passeword",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
