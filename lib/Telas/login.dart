import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:motion/motion.dart';

class Login extends StatefulWidget {
  const Login ({super.key});

  @override
  State <Login> createState() => _LoginState();

}

class _LoginState extends State <Login> {

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
  }

  bool _aGravar = false;

  Future <void> _gravar () async{
    if (!_formKey.currentState!.validate()){
      return;
    }

    setState(() => _aGravar = true);



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Color(0xFF0F2027),
                Color(0xFF203A43),
                Color(0xFF2C5364),
              ],
            begin: Alignment.topLeft,
            end:  Alignment.bottomRight,
            ),
          ),
        child: Center(
            child: Container(
              width: 930,
              height: 530,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(24),
              ),
              child : Motion.elevated(
                elevation: 100,
                borderRadius: BorderRadius.circular(20),
              child: Center(
                child: Container(
                  width: 900,
                  height: 500,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF000000),
                      Color(0xFF0C0C1E),
                      Color(0xFF211B15),
                    ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          width: 140,
                          height: 140,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}