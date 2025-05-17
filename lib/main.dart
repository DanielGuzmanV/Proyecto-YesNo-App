import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesno_app/config/theme/app_theme.dart';
import 'package:yesno_app/presentacion/providers/chat_provider.dart';
import 'package:yesno_app/presentacion/screens/main/screen_main.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes-No_App',
        theme: ClassAppTheme(seleccionColor: 6).temasApp(),
      
        home: const ChatScreen(),
        
      ),
    );


  }

}


