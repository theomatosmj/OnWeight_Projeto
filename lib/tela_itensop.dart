import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaItensop extends StatelessWidget {
  final List<String> dadosDaOp;
  const TelaItensop({super.key, required this.dadosDaOp});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;

    double marginHorizontal;

    if (largura > 800) {
      marginHorizontal = 90.00;
    } else {
      marginHorizontal = 25;
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF205392), Color(0xFF0013bd)],
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          dadosDaOp[0],
          style: GoogleFonts.robotoCondensed(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
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
            ),
            SizedBox(height: 30),

            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 25, right: 25),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 160,
              ),
              children: [
                Container(
                  padding: EdgeInsets.all(30),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(21, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Icon(
                          Icons.balance,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Produto',
                        style: GoogleFonts.robotoCondensed(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        dadosDaOp[3],
                        style: GoogleFonts.robotoCondensed(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(30),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(21, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Icon(
                          Icons.balance,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Produto',
                        style: GoogleFonts.robotoCondensed(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        dadosDaOp[3],
                        style: GoogleFonts.robotoCondensed(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(30),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(21, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Icon(
                          Icons.balance,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Produto',
                        style: GoogleFonts.robotoCondensed(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        dadosDaOp[3],
                        style: GoogleFonts.robotoCondensed(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(30),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(21, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Icon(
                          Icons.balance,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Produto',
                        style: GoogleFonts.robotoCondensed(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        dadosDaOp[3],
                        style: GoogleFonts.robotoCondensed(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(
                            68,
                            0,
                            0,
                            0,
                          ).withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),

                    child: ListTile(
                      title: Text("TEXTO 1"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
