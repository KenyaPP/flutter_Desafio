import 'package:desafio1_flutter/components/button.dart';
import 'package:desafio1_flutter/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetails extends StatefulWidget {
  final Food food;
  const FoodDetails({Key? key, required this.food}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  // funciones
  int count = 0;
  void restart() {
    setState(() {
      count--;
    });
  }

  void sumar() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          //detalles

          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView(
              children: [
                //image
                Image.asset(
                  widget.food.imagePath,
                  height: 200,
                ),
                const SizedBox(
                  width: 25,
                ),

                Row(
                  children: [
                    //icono
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    //raitin
                    const SizedBox(
                      height: 25,
                    ),
                    Text(widget.food.rating)
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                //nombre
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                ),
                const SizedBox(
                  height: 25,
                ),
                //descrioncion
                Text(
                  "Descripcion",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: 14, height: 2),
                ),
              ],
            ),
          )),

          Container(
            color: Colors.red,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                //precio cantidad.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //precio
                    Text(
                      "\$" + widget.food.price,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    //cantidad
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 26, 15),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.remove),
                            color: Colors.white,
                            onPressed: () {
                              restart();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              count.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 26, 15),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {
                              sumar();
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //agregar al carrito
                MyButton(
                  text: "Comprar",
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
