import 'package:desafio1_flutter/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Function()? onTap;
  final Food food;
  const FoodTile({Key? key, required this.food, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.all(25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //iamgen
              Image.asset(
                food.imagePath,
                height: 140,
              ),
              //nombre
              Text(
                food.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              //precio
              SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$' + food.price),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          food.rating,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
