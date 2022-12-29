import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String sec = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        sec = "sol";
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 400,
                      color: sec == "sol" ? Colors.blue : Colors.grey,
                      child: Text(
                        sec == "sol" ? "AKTIF BUTON" : "PASIV BUTON",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        sec = "sag";

                        print(sec);
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 400,
                      color: sec == "sag" ? Colors.blue : Colors.grey,
                      child: Text(
                        sec == "sag" ? "AKTIF BUTON" : "PASIV BUTON",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
