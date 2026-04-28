import 'package:flutter/material.dart';
import 'package:psi/Class/Jogos.dart';

class Jogosdata extends ChangeNotifier {

  static List<Jogos> JData = [
    Jogos(
      nome: 'Counter Strike 2',
      Image: 'assets/images/Jogos/cs2.png',
      Ano: 2023,
      Pontuacao: 7.0,
      nota: 5.0,
    ),

    Jogos(
      nome: 'Fortnite',
      Image: 'assets/images/Jogos/fort.png',
      Ano: 2017,
      Pontuacao: 5.7,
      nota: 5.0,
    ),

    Jogos(
      nome: 'Uncharted 2: Among Thieves',
      Image: 'assets/images/Jogos/Un2.png',
      Ano: 2009,
      Pontuacao: 9.3,
      nota: 5.0,
    ),

    Jogos(
      nome: "GTA V",
      Image: 'assets/images/Jogos/GTAV.png',
      Ano: 2013,
      Pontuacao: 9.4,
      nota: 5.0,
    ),

    Jogos(
      nome: "Brawlhalla",
      Image: 'assets/images/Jogos/brawl.png',
      Ano: 2017,
      Pontuacao: 6.0,
      nota: 5.0,
    ),

    Jogos(
      nome: "Subnautica",
      Image: 'assets/images/Jogos/sub.png',
      Ano: 2018,
      Pontuacao: 8.4,
      nota: 5.0,
    ),

    Jogos(
      nome: "Alien: Isolation",
      Image: 'assets/images/Jogos/Alien.png',
      Ano: 2014,
      Pontuacao: 8.6,
      nota: 5.0,
    ),

    Jogos(
      nome: "Phasmophobia",
      Image: 'assets/images/Jogos/phasm.png',
      Ano: 2020,
      Pontuacao: 7.3,
      nota: 5.0,
    ),

    Jogos(
      nome: "Five Nights at Freddy's",
      Image: 'assets/images/Jogos/fnaf.png',
      Ano: 2014,
      Pontuacao: 7.4,
      nota: 5.0,
    ),
  ];
}