import 'package:flutter/material.dart';
import 'package:yesno_app/presentacion/screens/screen-appbar/screen_appbar.dart';
import 'package:yesno_app/presentacion/screens/screen-body/screen_body.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      
      appBar: ScreenAppbar(),
      body: ScreenBody(),
    );
  }
}

