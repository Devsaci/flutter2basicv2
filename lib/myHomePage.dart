import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passwordVisible = true;
  var b = Colors.black;
  var w = Colors.white;
  var r = Colors.red;
  var br = Colors.brown;
  var dp = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: b,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                // color: Colors.lime,
                child: TextField(
                    // textAlign: TextAlign.center,
                    // maxLines: 5,
                  decoration: InputDecoration(
                 prefixText: "+0033  ",
                      fillColor: dp,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 3, color: Colors.greenAccent),
                        borderRadius:
                        BorderRadius.all(Radius.circular(30.0)),
                      ),

                      labelText: "TextField",
                      labelStyle: TextStyle(fontSize: 20, color: r),
                      hintText: "TextField",
                      hintStyle: TextStyle(fontSize: 15, color: w)),
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: w)
                ),
              ),
              //box n 1 email
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 3, color: Colors.lime),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(6.0)),
                      ),
                      icon: Icon(Icons.mail_outline, size: 30, color: r),
                      labelText: "Adress Mail",
                      labelStyle: TextStyle(fontSize: 20, color: r),
                      hintText: "Enter eMail",
                      hintStyle: TextStyle(fontSize: 15, color: w)),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: w),
                ),
              ),
              //box n 1 Passworde
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                // color: Colors.orange,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.password, size: 30, color: r),
                      labelText: "Passeword",
                      labelStyle: TextStyle(fontSize: 20, color: r),
                      hintText: "Enter Passeword",
                      hintStyle: TextStyle(fontSize: 15, color: w)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  style: TextStyle(color: w),
                ),
              ),
              //box n 2 email
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                // color: Colors.lime,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline, size: 30, color: r),
                      labelText: "Adress Mail",
                      labelStyle: TextStyle(fontSize: 20, color: r),
                      hintText: "Enter eMail",
                      hintStyle: TextStyle(fontSize: 15, color: r)),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: w),
                ),
              ),
              //box n 2 Passworde
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                // color: Colors.orange,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                            passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: r),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                      labelText: "Passeword",
                      labelStyle: TextStyle(fontSize: 20, color: r),
                      hintText: "Enter Passeword",
                      hintStyle: TextStyle(fontSize: 15, color: r)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: passwordVisible,
                  style: TextStyle(color: w),
                ),
              ),
              //box n 3 email
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                // color: Colors.lime,
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
                      hintStyle: TextStyle(fontSize: 15, color: w)),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: w),
                ),
              ),
              //box n 3 Passworde
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                // color: Colors.orange,
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
                      hintStyle: TextStyle(fontSize: 15, color: w)),
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: w),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: w,
          onPressed: () {
            setState(() {
               b = b==Colors.black?Colors.white:Colors.black;
               w = b==Colors.white?Colors.black:Colors.white;
               r = Colors.blue;
               br = Colors.brown;
               dp = Colors.yellow;
            });
          }
      ),
    );
  }
}
