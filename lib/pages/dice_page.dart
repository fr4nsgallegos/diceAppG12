import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // String rutaImagen = "assets/images/dice1.png";
  int dadoN = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003049),
      appBar: AppBar(title: Text("Dice Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Color(0xfffdf0d5),
              padding: EdgeInsets.all(16),
              // color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.red,
                //BORDES CIRCULARES

                //PRIMERA FORMA
                borderRadius: BorderRadius.circular(16),

                // SEGUNDA FORMA
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(16),
                //   bottomRight: Radius.circular(16),
                // ),

                // TERCERA FORMA
                // shape:
                // BoxShape
                // .circle, //convvierte el container en un circulo perfecto
              ),
              child: Image.asset(
                "assets/images/dice$dadoN.png",
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: Colors.purple,
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xffF7F2FA),
                  ),
                  onPressed: () {
                    dadoN -= 1;
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_left_outlined),
                ),
                ElevatedButton(
                  onPressed: () {
                    // rutaImagen = "assets/images/dice6.png";
                    dadoN = 6;
                    setState(() {});
                  },
                  child: Text("Cambiar a dado 6"),
                ),
                IconButton(
                  color: Colors.purple,
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xffF7F2FA),
                  ),
                  onPressed: () {
                    dadoN += 1;
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
