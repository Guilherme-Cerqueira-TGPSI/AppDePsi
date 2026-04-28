import 'package:flutter/material.dart';
import 'package:psi/Telas/dinamicas.dart';

class cores extends StatefulWidget {
  const cores ({super.key});

    State<cores> createState() => _coresState();
}

class _coresState extends State<cores> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cores"),
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