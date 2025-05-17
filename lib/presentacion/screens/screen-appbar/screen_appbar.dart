import 'package:flutter/material.dart';

// Implementamos "PreferredSizeWidget" para que flutter acepte el widget como
// un "appBar", ya que es obligatorio para que flutter sepa el tamaño del appBar
class ScreenAppbar extends StatelessWidget implements PreferredSizeWidget{
  const ScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      );
  }

  // Implementamos "preferredSize" que le dice a flutter la altura del appBar
  // tambien para que flutter sepa que altura usar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}














