import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  // Corregir el constructor aquí
  const MyButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 189, 26, 15),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
