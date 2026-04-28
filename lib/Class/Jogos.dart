class Jogos {

  final String nome;
  final String Image;
  final int Ano;
  final double Pontuacao;
  final List ?Tags;

  const Jogos ({
    required this.nome,
    required this.Image,
    required this.Ano,
    required this.Pontuacao,
    this.Tags,
});

}