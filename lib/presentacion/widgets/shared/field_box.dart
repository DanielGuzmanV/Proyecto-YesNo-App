import 'package:flutter/material.dart';

class FieldBox extends StatelessWidget {
  const FieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    // customTextController nos ayudara a limpiar la caja de texto al enviar un texto
    final customTextController = TextEditingController();

    // customFocusNode mantendra el activo el teclado sin que se cierre
    final customFocusNode = FocusNode();

    // Creamos un solo codigo para el enableBorder y focusedBorder que seria la decoracion del border:
    final customInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(35)
    );

    // Decoracion del de la caja de texto:
    final customInputDecoration = InputDecoration(
      hintText: 'El mensaje termino con "?"',

      enabledBorder: customInputBorder,
      focusedBorder: customInputBorder,

      filled: true,
      suffixIcon: IconButton(
        onPressed: (){
          customTextController.clear();
        }, 
        icon: const Icon(Icons.send_outlined)
      )
    );

    return TextFormField(
      // Cuando presionemos fuera del teclado este se cerrara
      onTapOutside: (event) {
        customFocusNode.unfocus();
      },

      focusNode: customFocusNode,
      controller: customTextController,
      decoration: customInputDecoration,

      onFieldSubmitted: (value) {
        customTextController.clear();
        customFocusNode.requestFocus();
      },
    );
  }
}