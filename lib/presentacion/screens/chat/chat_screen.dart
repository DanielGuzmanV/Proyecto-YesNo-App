import 'package:flutter/material.dart';

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
              itemCount: 50,
              itemBuilder: (context, index) {
                return Text('El indice es $index');
              },
            )),
        
            const Text('Enviar mensajes')
          ],  

        ),
      ) 
    );
  }
}