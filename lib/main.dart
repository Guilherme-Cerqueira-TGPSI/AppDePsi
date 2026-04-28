import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:psi/Telas/TelaDispositivos.dart';
import 'package:psi/Telas/Listas/ListaJogos.dart';
import 'package:psi/Telas/Listas/ListaProjetos.dart';
import 'package:psi/Telas/dinamicas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.deepPurple,
        useMaterial3: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.deepPurple,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      title: 'Ex 1',
      home: const Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Principal",
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

            ElevatedButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder:(_) => TelaDispositivos()
                ),
              );
            },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child: Text("Ir para Menu de Dispositivos")
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (_) => Listajogos()
                ),
              );
            },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: Text("Ir para lista de Jogos"),
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (_) => ListaProjetos()
                ),
              );
            },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
                child: Text("Ir para lista de Projetos"),
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => dinamicas(),
                ),
              );
            },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: Text("Ir para Funções Dinamicas"),
            ),

            SizedBox(height: 80,),

          ],
        ),
        ),
      ),
    );
  }
}