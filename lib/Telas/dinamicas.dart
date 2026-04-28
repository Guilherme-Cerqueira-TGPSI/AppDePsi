import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:psi/Telas/dina/cores.dart';
import 'package:psi/Telas/dina/timer.dart';
import 'package:psi/Telas/dina/calc.dart';

class dinamicas extends StatelessWidget{
  const dinamicas ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Funções Dinamicas"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Colors.white,
            Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                height: 160,
                width: 160,
                child: Image.asset("assets/images/logo.png"),
              ),

              ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (_) => cores(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
                  child: Text("Cores")
              ),

              SizedBox(height: 5,),

              ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (_) => timer(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
                child: Text("Timer"),
              ),

              SizedBox(height: 5,),

              ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (_) => calc(),
                  ),
                );
              },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                  child: Text("Calculadora"),
              ),

              SizedBox(height: 15,),

              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child: Text("Voltar ao Menu principal"),
              ),

              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}