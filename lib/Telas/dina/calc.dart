import 'package:flutter/material.dart';

class calc extends StatefulWidget {
  const calc ({super.key});

  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
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