import 'package:desafio1_flutter/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menuPage.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),

                //nombre
                Text("SUHSI",
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 28, color: Colors.white)),
                const SizedBox(
                  height: 25,
                ),

                //imagen
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('lib/images/sushi.png'),
                ),
                const SizedBox(
                  height: 25,
                ),

                //subtitul
                Text(
                  "Maquetado prueba",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                //link
                //boton
                MyButton(
                  text: "Iniciar",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tab()),
                    );
                  },
                )
              ]),
        ));
  }
}

class Tab extends StatelessWidget {
  const Tab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: Text("SUSHI"),
                bottom: const TabBar(tabs: [Text("Comprar"), Text("Ver")])),
            body: const TabBarView(children: [MenuPage(), MenuPage()]),
          )),
    );
  }
}
