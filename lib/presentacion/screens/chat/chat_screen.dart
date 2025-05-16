import 'package:flutter/material.dart';
import 'package:yesno_app/presentacion/widgets/chat/doc_message.dart';
import 'package:yesno_app/presentacion/widgets/chat/my_message.dart';
import 'package:yesno_app/presentacion/widgets/shared/field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://mexiconewsdaily.com/wp-content/uploads/2025/02/dr-simi-personaje-cadena-farmacias-copy.jpg'
            ),
          ),
        ),

        title: const Text('Doctor Simi'),
        centerTitle: false,
      ),

      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(

          children: [
            Expanded(child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const MyMessage()
                : const DocMessage();
              },
            )),
        
            // Se agregara la caja de texto para enviar mensajes:
            const FieldBox(),
          ],  

        ),
      ) 
    );
  }
}












