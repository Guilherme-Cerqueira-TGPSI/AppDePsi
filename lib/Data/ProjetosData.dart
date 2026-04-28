import 'package:flutter/material.dart';
import 'package:psi/Class/Projetos.dart';

class ProjetosData extends ChangeNotifier {

  static const List<Projetos> PData = [

    Projetos(Nome: 'Calculadora e Jogo',
        Image: 'assets/images/Projetos/prog1.png',
        Descricao: '  Este trabalho foi feito para o primeiro modulo de "C" e por causa dele tive nega 👍.\nMas depois recuperei com uma calculadora completa e funcional que fiz em apenas 50 min.',
        Status: 'Finalizado',
        Nota: 0 ),

    Projetos(Nome: 'Quase todos falharam',
        Image: 'assets/images/Projetos/prog2.png',
        Descricao: '  Projeto em C em que tinhamos de fazer um jogo sobre o papel das mulheres na programação e o tituo é "Quase todos falharam" porque so 3 passaram de primeira e eu foi um deles.',
        Status: 'Finalizado',
        Nota: 19
    ),

    Projetos(Nome: 'Edex-UI Mod',
      Image: 'assets/images/Projetos/edexui.png',
      Descricao: '  O Edex-UI é um emulador de terminal cujo o repo original esta no GitHub estou a modificalo a ponto de se tornar um mini os com browser integrado e outros.',
      Status: 'Em Desenvolvimento' ,
    ),

    Projetos(Nome: 'AV Python',
      Image: 'assets/images/Projetos/live.png',
      Descricao: '  Assistente Virtual personalizada com IA local num servidor meu.(PAP reserva caso não acabe a principal)',
      Status: 'Em Desenvolvimento' ,
    ),

    Projetos(Nome: 'Site da Empresa',
      Image: 'assets/images/Projetos/Red.png',
      Descricao: '  Site para a minha propria empresa "RedFox Studio".',
      Status: 'Em Desenvolvimento' ,
    ),

    Projetos(Nome: 'Spectres: Shadows Legacy',
      Image: 'assets/images/Projetos/',
      Descricao: '  Jogo em Desenvolvimento (Primeiro Grande Lançamento da Empresa).',
      Status: 'Em Desenvolvimento' ,
    ),

    Projetos(Nome: 'Tapete Holografico',
      Image: 'assets/images/Projetos/',
      Descricao: '  Tapete tipo mousepad sensivel ao toque como se fosse uma tela.',
      Status: 'No Papel' ,
    ),

    Projetos(Nome: 'Holodesk',
      Image: 'assets/images/Projetos/',
      Descricao: '  Mesa holografica mas em vez de ser na mesa pousado é a "flutuar" tambem sensivel ao toque passando a sensação de holograma real.',
      Status: 'No Papel' ,
    ),

  ];
}