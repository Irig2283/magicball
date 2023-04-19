import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text("Ask Me Anything"),
        ),
        body: magicpage(),
        backgroundColor: Colors.blueAccent,
      ),
    ),
  );
}

class magicpage extends StatefulWidget {
  const magicpage({Key? key}) : super(key: key);

  @override
  State<magicpage> createState() => _magicpageState();
}

class _magicpageState extends State<magicpage> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ballnumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballnumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
