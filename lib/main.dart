import 'package:flutter/material.dart';

import 'login_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        primarySwatch: Colors.yellow,

        //
      ),
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
          title: Text(
            "WeCodeLife",
            style: TextStyle(
                color: Colors.black, fontStyle: FontStyle.italic, fontSize: 28),
          )),
      body:

      Center(
          child: Column(
            children: [
              Container(
                  height: 600,
                  width: 400,
                  color: Colors.black,
                  child: Center(
                      child: Text(
                        "Coding Life",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ))),
            ],
          )),
    );
  }
}
