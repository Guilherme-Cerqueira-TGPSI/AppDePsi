import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class TelaDispositivos extends StatelessWidget {
  const TelaDispositivos({super.key});

  @override
  Widget build(BuildContext context) {

    final String plataforma = kIsWeb ? 'web' : Platform.operatingSystem;

    String nomePlataforma = '';

    if (plataforma == 'android') {
      nomePlataforma = 'Android';
    } else if (plataforma == 'ios') {
      nomePlataforma = 'iOS';
    } else if (plataforma == 'windows') {
      nomePlataforma = 'Windows';
    } else if (plataforma == 'linux') {
      nomePlataforma = 'Linux';
    } else if (plataforma == 'web') {
      nomePlataforma = 'Web';
    }

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
                child: Column(
                  children: [
                    Container(
                      width: 160,
                      child: Column(
                        children: [
                          if(nomePlataforma == 'Web')
                            Image.asset("assets/images/Dispositivos/web.png"),

                          if(nomePlataforma == 'Linux')
                            Image.asset('assets/images/Dispositivos/linux.png'),

                          if(nomePlataforma == 'Android')
                            Image.asset('assets/images/Dispositivos/Android.png'),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),

                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      child: Text("Voltar ao Menu Principal"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

