import 'package:flutter/material.dart';
import 'package:yesno_app/domain/entities/message.dart';

class DocMessage extends StatelessWidget {
  final ClassMessage changeMessage;

  const DocMessage({
    super.key, 
    required this.changeMessage
  });

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

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              changeMessage.textMessage,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 5),
        
        _ImgMessage(changeMessage.imageUrl!),

        const SizedBox(height: 10),
      ],
    );
  }
}


// Clase para la imagen del lado del doctor:
class _ImgMessage extends StatelessWidget {

  final String resImgUrl;

  const _ImgMessage(this.resImgUrl);
  @override
  Widget build(BuildContext context) {

    // Verificamos la dimension del dispositivo
    final sizeDevice = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        resImgUrl,
        width: sizeDevice.width * 0.7,
        height: 150,
        fit: BoxFit.cover,

        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress == null) return child;

          return Container(
            width: sizeDevice.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Doc envia una imagen...'),
          );
        },
      ),
    );
  }
}

