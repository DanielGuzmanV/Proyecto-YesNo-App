import 'package:flutter/material.dart';
import 'package:yesno_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  // Lista de la clase "ClassMessage":
  List<ClassMessage> messageList = [
    ClassMessage(
      textMessage: 'Hola buenas doc', 
      fromWho: EnumFromWho.smsMe,
    ),

    ClassMessage(
      textMessage: 'Hay cupos disponibles',
      fromWho: EnumFromWho.smsMe,
    ),
  ];

  // Metodo "Future" que enviar un mensaje "asincrono":
  Future<void> enviarMensajes(String smsText) async {
    final newMessage = ClassMessage(
      textMessage: smsText, 
      fromWho: EnumFromWho.smsMe
    );
    // Agregamos los nuevos mensajes a la lista "messageList"
    messageList.add(newMessage);

    // Notificamos los cambios:
    notifyListeners();
  }
}








