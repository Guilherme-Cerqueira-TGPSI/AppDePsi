class Jogos {

  final String nome;
  final String Image;
  final int Ano;
  final double Pontuacao;
  double nota;
  final List ?Tags;

  Jogos ({
    required this.nome,
    required this.Image,
    required this.Ano,
    required this.Pontuacao,
    required this.nota,
    this.Tags,
});

}