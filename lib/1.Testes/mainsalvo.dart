/*
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: 'Main'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      //body: Center(
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),

              ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (_) => Segundo()
                  ),
                );
              },
                  child: const Text("Ir Para Android")
              ),

              SizedBox(height: 10),

              ElevatedButton(onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (_) => Terceiro()
                ),
                );
              },
                  child: const Text("Ir para a tela Web")
              ),

              SizedBox(height: 10),

              ElevatedButton(onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (_) => Quarto()
                ),
                );
              },
                  child: const Text("Ir para a Tela Linux")
              ),
            ],
          ),
          //),
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      //tooltip: 'Increment',
      //child: const Icon(Icons.add),
      //),
    );
  }
}*/
