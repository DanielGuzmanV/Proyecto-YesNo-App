import 'package:flutter/material.dart';
import 'package:yesno_app/presentacion/screens/screen-fieldbox/screen_fieldbox.dart';

import 'package:yesno_app/presentacion/widgets/chat/doc_message.dart';
import 'package:yesno_app/presentacion/widgets/chat/my_message.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return (index % 2 == 0) 
              ? const MyMessage() 
              : const DocMessage();
            },
          )),

          // Se agregara la caja de texto para enviar mensajes:
          const ScreenFieldbox(),
        ],
      ),
    ));
  }
}