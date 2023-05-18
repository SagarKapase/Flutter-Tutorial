import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Textfield"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your user name',
                    hintText: 'Enter your name'
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your password',
                    hintText: 'Enter Password'
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Login Successful');
                }, 
                child: Text("Login"),
              )
            ],
          ),
        ),

        
      ),
    );
  }

}
