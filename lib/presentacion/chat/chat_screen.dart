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
    );
  }
}