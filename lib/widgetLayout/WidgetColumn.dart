import 'package:flutter/material.dart';
import 'package:meu_app/widgetLayout/Box.dart';

/**
 * WIDGET COLUMN
 * e um widget usado para dispor widgets filhos verticalmente, um
 * embaixo do outro, dentro de um unico eixo (o eixo vertical y)
 * 
 * PROPRIEDADES PRINCIPAIS
 * 
 * children -> uma lista de widgets empilhados verticalmente
 * mainAxisAlignment -> alinha os filhos no eixo vertical
 * crosAxisalignment -> alinha os filhos no eixo cruzado (horizontal)
 * mainAxisSize -> controla se a colunm ocupa todo o espaco ou apenas o necessario
 * texBiseLine -> necessario para o alinhamento de texto do crosAxisalignment.
 * 
 */

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

@override
Widget build(BuildContext context) {
  return Align(
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
          /* children: [
            Text("Texto 1"),
            Text("Texto 2"),
            Container(
              width: 50,
              height: 50,
              color: Colors.deepPurple,
            )
          ], */
          children:[
        Box(text: "Box 1", backgroundColor: Colors.amberAccent),
        Box(text: "Box 2", backgroundColor: Colors.purpleAccent),
        Box(text: "Box 3", backgroundColor: Colors.cyanAccent),
      ],
    ),
  );
}
}