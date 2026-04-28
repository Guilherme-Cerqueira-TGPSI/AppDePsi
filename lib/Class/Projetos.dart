class Projetos {

  final String Nome;
  final String Image;
  final String Descricao;
  final String Status;
  final int ?Nota;

  const Projetos({
    required this.Nome,
    required this.Image,
    required this.Descricao,
    required this.Status,
    this.Nota,
});

}