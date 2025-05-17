import 'package:flutter/material.dart';
import 'package:yesno_app/config/theme/app_theme.dart';
import 'package:yesno_app/presentacion/screens/main/screen_main.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes-No_App',
      theme: ClassAppTheme(seleccionColor: 6).temasApp(),

      home: const ChatScreen(),
      
    );


  }

}


