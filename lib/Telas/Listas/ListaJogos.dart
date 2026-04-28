  import 'package:flutter/material.dart';
  import 'package:psi/Class/Jogos.dart';
  import 'package:psi/Data/JogosData.dart';

  class Listajogos extends StatefulWidget {
    const Listajogos({super.key});

    @override
    State<Listajogos> createState() => _ListajogosState();
  }

  class _ListajogosState extends State<Listajogos> {

    @override
    Widget build(BuildContext context) {

      void _mais (int index)
      {
        setState(() {
          if(Jogosdata.JData[index].nota < 10.0){
            Jogosdata.JData[index].nota += 0.5;
          }
        });
      }

      void _menos (int index)
      {
        setState(() {
          if(Jogosdata.JData[index].nota > 0.0){
            Jogosdata.JData[index].nota -= 0.5;
          }
        });
      }

      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lista de Jogos",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child: const Text("Voltar ao Menu Principal"),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3 ,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: Jogosdata.JData.length,
                  itemBuilder: (context, index) {
                    final jogo = Jogosdata.JData[index];

                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: Offset(0,5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              jogo.Image,
                              height: 200,
                              width: 400,
                              fit: BoxFit.fill,
                            ),
                          ),

                          Padding(
                              padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  jogo.nome,
                                  style:  const TextStyle(
                                    color:Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      jogo.Pontuacao.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(Icons.star),
                                  ],
                                ),

                                SizedBox(height: 10,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(onPressed: () {
                                      _menos(index);
                                    },
                                      icon: Icon( Icons.remove_circle_outline),
                                    ),

                                    SizedBox(width: 3,),

                                    Text(
                                      jogo.nota.toString(),
                                    ),

                                    SizedBox(width: 3,),


                                    IconButton(
                                      onPressed: () {
                                        _mais(index);
                                      },
                                      icon: Icon(Icons.add_circle_outline),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }