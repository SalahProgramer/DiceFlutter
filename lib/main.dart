import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,
            title: Text("Dicee"),
            backgroundColor: Colors.red,
          ),
          body: dicepage(),
        ));
  }
}

class dicepage extends StatefulWidget {
  const dicepage({super.key});

  @override
  State<dicepage> createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  int numDice1 = 1;
  int numDice2 = 2;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          numDice1=Random().nextInt(6)+1;
                          numDice2=Random().nextInt(6)+1;

                        });
                      },
                      child: Image.asset("images/dice$numDice1.png")))),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        numDice2=Random().nextInt(6)+1;
                        numDice1=Random().nextInt(6)+1;


                      });
                    },
                    child: Image.asset("images/dice$numDice2.png")),
              ))
        ],
      ),
    ));
  }
}
