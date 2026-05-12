import 'package:flutter/material.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animations/animations.dart';
import 'package:motion/motion.dart';

import 'package:psi/Telas/TelaDispositivos.dart';
import 'package:psi/Telas/Listas/ListaJogos.dart';
import 'package:psi/Telas/Listas/ListaProjetos.dart';
import 'package:psi/Telas/dinamicas.dart';

Future<void> main() async{
  runApp(const MyApp());

  WidgetsFlutterBinding.ensureInitialized();

  await Motion.instance.initialize();
}

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Principal()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.white,
            Colors.grey,
            Colors.black,
            ],
            center: Alignment.center,
            radius: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 20,
                          spreadRadius: 2,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    width: 300,
                    height: 400,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Text(
                          "Bem Vindo ao Projeto",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        SizedBox(height: 10,),
                        const CircularProgressIndicator(
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
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
      home: const SplashScreenPage(),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TelaDispositivos(),
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