import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String rutaImagen = "assets/images/dice1.png";

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
              child: Image.asset(rutaImagen, width: 300, height: 300),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                rutaImagen = "assets/images/dice6.png";
                setState(() {});
              },
              child: Text("Cambiar a dado 6"),
            ),
          ],
        ),
      ),
    );
  }
}
