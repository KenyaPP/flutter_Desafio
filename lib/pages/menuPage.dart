import 'package:desafio1_flutter/components/button.dart';
import 'package:desafio1_flutter/models/food.dart';
import 'package:desafio1_flutter/pages/foodTile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'foodDetails.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //lista
  List foodMenu = [
    Food(
        imagePath: 'lib/images/sushi.png',
        name: "Pescado 1",
        price: "55",
        rating: "2"),
    Food(
        imagePath: 'lib/images/sushi.png',
        name: "Pescado 2",
        price: "44",
        rating: "2"),
    Food(
        imagePath: 'lib/images/sushi.png',
        name: " Pescado 3",
        price: "33",
        rating: "2")
  ];
  //funcion para navegar
  void navigateToDetail(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodDetails(
                  food: foodMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo baner
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            padding: EdgeInsets.all(25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Obten un descuento",
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyButton(text: "Obtener", onTap: () {})
                    ],
                  ),
                  Image.asset(
                    'lib/images/sushi.png',
                    height: 100,
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),

          //seacrbar

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Buscar...",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(height: 25),
          //menu list
          const Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
            child: Text(
              "Menu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          //popular food
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                        food: foodMenu[index],
                        onTap: () => navigateToDetail(index),
                      ))),

          const SizedBox(height: 10),

          //popular
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //iamgen
                  Row(
                    children: [
                      Image.asset(
                        "lib/images/sushi.png",
                        height: 60,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "nombre",
                            style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "\$21.00",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //corazon
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 25,
                  )
                ]),
          )
        ],
      ),
    );
  }
}
