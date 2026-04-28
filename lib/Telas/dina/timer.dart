import 'package:flutter/material.dart';

class timer extends StatefulWidget {
  const timer ({super.key});

  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.black,
            ],
            begin:Alignment.bottomLeft,
            end:Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child: Text("Voltar ao Menu Dinamico"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}