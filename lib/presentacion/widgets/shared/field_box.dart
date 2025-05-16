import 'package:flutter/material.dart';

class FieldBox extends StatelessWidget {
  const FieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    // Creamos un solo codigo para el enableBorder y focusedBorder:
    final customInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(35)
    );

    // Decoracion del de la caja de texto:
    final customInputDecoration = InputDecoration(
        enabledBorder: customInputBorder,
        focusedBorder: customInputBorder,

        filled: true,
        suffixIcon: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.send_outlined)
        )
      );

    return TextFormField(
      decoration: customInputDecoration,

    );
  }
}