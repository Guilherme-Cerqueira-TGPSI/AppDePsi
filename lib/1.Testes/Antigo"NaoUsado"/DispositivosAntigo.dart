/*
import 'package:flutter/material.dart';

class TelaDispositivos extends StatelessWidget {
  const TelaDispositivos({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu de Dispositivos",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),

      body: Container(
        decoration: const BoxDecoration(
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
                width: 160,
                height: 160,
                child: Image.asset("assets/images/logo.png"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Segundo()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Ir para a tela Android"),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (_) => Terceiro()
                  ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Ir para a tela Web"),
              ),

              SizedBox(height: 10),

              ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (_) => Quarto()
                  ),
                );
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: Text("Ir para a Tela Linux"),
              ),

              SizedBox(height: 200,),

              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              },
                child: Text("Voltar ao Menu Principal"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/