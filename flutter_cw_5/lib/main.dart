import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int images1 = 1;

  int images2 = 2;

  String result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text("Player1"),
              Text("Player2")
            ]),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/i_$images1.png", width: 150),
                Image.asset(
                  "images/i_$images2.png",
                  width: 150,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 40,
                    )),
                onPressed: () {
                  setState(() {
                    images1 = Random().nextInt(3) + 1;
                    images2 = Random().nextInt(3) + 1;
                    if (images1 == images2) {
                      result = "It's a tie";
                    } else if (images1 == 1 && images2 == 2) {
                      result = "Player two has won";
                    } else if (images1 == 1 && images2 == 3) {
                      result = "Player one has won";
                    } else if (images1 == 2 && images2 == 1) {
                      result = "Player one has won";
                    } else if (images1 == 2 && images2 == 3) {
                      result = "Player two has won";
                    } else if (images1 == 3 && images2 == 1) {
                      result = "Player two has won";
                    } else if (images1 == 3 && images2 == 2) {
                      result = "Player one has won";
                    }
                  });
                },
                child: Text("Play")),
            SizedBox(
              height: 40,
            ),
            Text(result)
          ],
        )),
      ),
    );
  }
}
