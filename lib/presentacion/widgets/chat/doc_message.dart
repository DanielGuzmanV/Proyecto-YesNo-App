import 'package:flutter/material.dart';

class DocMessage extends StatelessWidget {
  const DocMessage({super.key});

  @override
  Widget build(BuildContext context) {

    final colorsCustom = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colorsCustom.secondary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mensaje del Doc',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 5),
        
        _ImgMessage(),

        const SizedBox(height: 10),
      ],
    );
  }
}


// Clase para la imagen del lado del doctor:
class _ImgMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Verificamos la dimension del dispositivo
    final sizeDevice = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/22-8806dbccb1edf544723b7f095ff722e8.gif",
        width: sizeDevice.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

