import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {

    final coloresCustom = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: coloresCustom.primary,
            borderRadius: BorderRadius.circular(20)
          ),

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Este es mi mensaje', style: TextStyle(color: Colors.white),),
          ),

        ),

        const SizedBox(height: 10,)
      ],
    );
  }
}