import 'package:flutter/material.dart';
import 'package:yesno_app/domain/entities/message.dart';

class MyMessage extends StatelessWidget {
  final ClassMessage changeMessage;

  const MyMessage({
    super.key, 
    required this.changeMessage
  });

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

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              changeMessage.textMessage, 
              style: const TextStyle(color: Colors.white),
            ),
          ),

        ),

        const SizedBox(height: 10,)
      ],
    );
  }
}