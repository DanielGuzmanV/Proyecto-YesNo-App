import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesno_app/domain/entities/message.dart';
import 'package:yesno_app/presentacion/providers/chat_provider.dart';
import 'package:yesno_app/presentacion/screens/screen-fieldbox/screen_fieldbox.dart';

import 'package:yesno_app/presentacion/widgets/chat/doc_message.dart';
import 'package:yesno_app/presentacion/widgets/chat/my_message.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Notificaremos los cambios:
    final chatProviderChange = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(

        children: [
          Expanded(
              child: ListView.builder(
            // Controlamos la dimension de los mensajes
            itemCount: chatProviderChange.messageList.length,
            itemBuilder: (context, index) {

              final messageValues = chatProviderChange.messageList[index];
              
              return (messageValues.fromWho == EnumFromWho.smsDoctor) 
              ? const DocMessage()
              : MyMessage(changeMessage: messageValues,);
            },
          )),

          // Se agregara la caja de texto para enviar mensajes:
          const ScreenFieldbox(),
        ],
      ),
    ));
  }
}