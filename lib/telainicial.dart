import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_teste/tela_itensop.dart';
import 'lista_ops.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    int colunas;

    if (largura < 500) {
      colunas = 2;
    } else if (largura <= 600) {
      colunas = 3;
    } else if (largura < 900) {
      colunas = 3;
    } else {
      colunas = 4;
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF205392), Color(0xFF0013bd)],
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/onimus-logo2.png', width: 130),
      ),

      body: Column(
        children: [
          Divider(color: Colors.grey, thickness: 2, height: 1),
          Container(
            height: 20,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF205392), Color(0xFF0013bd)],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 42),
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF205392), Color(0xFF0013bd)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(40, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: Icon(Icons.balance, color: Colors.white, size: 35),
                ),
                SizedBox(width: 8),
                Text(
                  "Ordens de Produção",
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF205392), Color(0xFF0013bd)],
              ),
            ),
          ),

          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF205392), Color(0xFF0013bd)],
              ),
            ),

            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Pesquisar",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              itemCount: listaOP.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: colunas,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 162,
              ),
              itemBuilder: (context, index) {
                final op = listaOP[index];

                return Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(op[0]),
                      SizedBox(height: 5),
                      Text(op[1]),
                      SizedBox(height: 5),
                      Text(op[2]),
                      SizedBox(height: 5),
                      Text(
                        op[3],
                        style: GoogleFonts.robotoCondensed(
                          color: Color(0xFF205392),
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TelaItensop(dadosDaOp: op),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF205392),
                          ),

                          child: Text(
                            'ABRIR OP',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                            ),
                          ),
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
    );
  }
}
