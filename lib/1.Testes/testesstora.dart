import 'package:flutter/material.dart';


class Segundo extends StatelessWidget {
  const Segundo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child:

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text('ola'),

              ElevatedButton.icon(
                onPressed:()
                {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.eleven_mp),
                label: const Text('andar'),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Text('óla'),
                      Text('óla'),
                      Text('óla'),

                    ],
                  ),
                  Column(
                    children: [
                      Text('óla'),
                      Text('óla'),
                      Text('óla'),

                    ],
                  ),
                  Column(
                    children: [
                      Text('óla'),
                      Text('óla'),
                      Text('óla'),

                    ],
                  ),

                ],

              )

            ],
          ),
        ),



      ),
    );
  }
}

