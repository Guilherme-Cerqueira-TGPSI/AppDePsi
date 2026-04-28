import 'package:flutter/material.dart';
import 'package:psi/Telas/dinamicas.dart';

class cores extends StatefulWidget {
  const cores ({super.key});

    State<cores> createState() => _coresState();
}

class _coresState extends State<cores> {

  Color Core = Colors.black;

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
              Core,
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
                setState(() {
                  Core = Colors.black;
                });
              },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Padrão")
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      Core = Colors.red;
                    });
                  },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Vermelho"),
                  ),

                  SizedBox(width: 10,),

                  ElevatedButton(onPressed: () {
                    setState(() {
                      Core = Colors.green;
                    });
                  },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Verde"),
                  ),

                  SizedBox(width: 10,),

                  ElevatedButton(onPressed: () {
                    setState(() {
                      Core = Colors.orange;
                    });
                  },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Laranja"),
                  ),
                ],
              ),

              SizedBox(height: 10,),

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