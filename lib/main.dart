import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ses(),
      ),
    );
  }
}

class ses extends StatefulWidget {
  @override
  State<ses> createState() => _sesState();
}

class _sesState extends State<ses> {
  final call = AudioPlayer();
  void sesical(String oynat) {
    call.setSource(AssetSource('$oynat.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildOutlinedButton("bip", Colors.blue),
                buildOutlinedButton("ridebel", Colors.red),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildOutlinedButton("clap1", Colors.cyanAccent),
                buildOutlinedButton("clap2", Colors.pink),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildOutlinedButton("clap3", Colors.deepPurple),
                buildOutlinedButton("oobah", Colors.orange),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildOutlinedButton("crash", Colors.green),
                buildOutlinedButton("woo", Colors.yellow),
              ],
            ),
          ),
        ],
      ),
    );
  }

  OutlinedButton buildOutlinedButton(String ses, Color renk) {
    return OutlinedButton(
      onPressed: () {
        sesical(ses);
      },
      child: Container(
        color: renk,
        width: 150,
        height: 150,
      ),
    );
  }
}
