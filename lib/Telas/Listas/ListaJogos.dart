  import 'package:flutter/material.dart';
  import 'package:psi/Data/JogosData.dart';
  import 'package:shared_preferences/shared_preferences.dart';
  import 'package:motion/motion.dart';


  class Listajogos extends StatefulWidget {
    const Listajogos({super.key});

    @override
    State<Listajogos> createState() => _ListajogosState();
  }

  class _ListajogosState extends State<Listajogos> {

    @override
    void initState() {
      super.initState();
      carregarNotas();
    }

    Future<void> guardarNota(int index) async {
      final prefs = await SharedPreferences.getInstance();

      final jogo = Jogosdata.JData[index];

      await prefs.setDouble(
          'user_nota_${jogo.nome}',
          jogo.nota
      );

    }

    Future<void> carregarNotas() async {
      final prefs = await SharedPreferences.getInstance();

      for(var jogo in Jogosdata.JData) {
        final nota = prefs.getDouble("user_nota_${jogo.nome}");

        if (nota != null) {
          jogo.nota = nota;
        }
      }
      setState(() {

      });

    }

    @override
    Widget build(BuildContext context) {

      void _mais (int index) async
      {
        setState(() {
          if(Jogosdata.JData[index].nota < 10.0){
            Jogosdata.JData[index].nota += 0.5;
          }
        });
        await guardarNota(index);
      }

      void _menos (int index) async
      {
        setState(() {
          if(Jogosdata.JData[index].nota > 0.0){
            Jogosdata.JData[index].nota -= 0.5;
          }
        });
        await guardarNota(index);
      }

      void _reset (int index) async
      {
        setState(() {
          Jogosdata.JData[index].nota = 5.0;
        });
        await guardarNota(index);
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

                    return Motion.elevated(
                      elevation: 100,
                      borderRadius: BorderRadius.circular(20),

                        child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: jogo.core,
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

                                    IconButton(onPressed: () {
                                      _reset(index);
                                    },
                                      icon: Icon(Icons.restart_alt_outlined),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [

                                    SizedBox(width: 35,),

                                    ElevatedButton(onPressed: () {
                                      setState(() {
                                        jogo.Verde();
                                      });
                                    },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Text("Verde"),
                                    ),

                                    SizedBox(width: 7,),

                                    ElevatedButton(onPressed: () {
                                      setState(() {
                                        jogo.Preto();
                                      });;
                                    },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white,
                                      ),
                                      child: Text("Preto"),
                                    ),

                                    SizedBox(width: 7,),

                                    ElevatedButton(onPressed: () {
                                      setState(() {
                                        jogo.Vermelho();
                                      });
                                    },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.red,
                                      ),
                                      child: Text("Vermelho"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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