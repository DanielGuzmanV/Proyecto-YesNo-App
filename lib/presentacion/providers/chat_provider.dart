import 'package:flutter/material.dart';
import 'package:yesno_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  // Variable tipo "ScrollControlle" para realizar el scroll:
  final ScrollController chatScroll = ScrollController();


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
    if(smsText.isEmpty) return;
    final newMessage = ClassMessage(
      textMessage: smsText, 
      fromWho: EnumFromWho.smsMe
    );
    // Agregamos los nuevos mensajes a la lista "messageList"
    messageList.add(newMessage);

    // Notificamos los cambios:
    notifyListeners();
    moveScrollBottom();
  }

  // Metodo para el Scroll:
  Future<void> moveScrollBottom() async {
    await Future.delayed(const Duration(microseconds: 100));

    chatScroll.animateTo(
      chatScroll.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );
  }


}








