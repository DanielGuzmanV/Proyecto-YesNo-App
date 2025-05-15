import 'package:flutter/material.dart';

class ClassAppTheme {

  final int seleccionColor;

  ClassAppTheme({
    this.seleccionColor = 0
  }): assert(seleccionColor >= 0 && seleccionColor <= _coloresTemas.length - 1, 'Colores entre 0 y ${_coloresTemas.length}');

  ThemeData temasApp() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _coloresTemas[seleccionColor],
    );
  }

}

// Color personalizado:
const Color _customColor = Color(0xFF4C07BB);

// Lista de colores:
const List<Color> _coloresTemas = [
  _customColor,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.deepOrange,
  Colors.purple,
  Colors.cyan,
];

