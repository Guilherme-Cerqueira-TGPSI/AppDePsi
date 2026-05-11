import 'package:flutter/material.dart';

class Jogos {

  final String nome;
  final String Image;
  final int Ano;
  final double Pontuacao;
  double nota;
  final List ?Tags;
  Color core;

  Jogos ({
    required this.nome,
    required this.Image,
    required this.Ano,
    required this.Pontuacao,
    required this.nota,
    this.Tags,
    required this.core,
});

  Color Vermelho() {
    core = Colors.red;
    return core;
  }
  Color Preto() {
    core = Colors.grey.shade900;
    return core;
  }
  Color Verde() {
    core = Colors.green;
    return core;
  }
}