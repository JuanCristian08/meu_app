import 'package:flutter/material.dart';
/**
 * o row é um widget que organiza os filhos horizontalmente, um ao lado do outro, dentro de um único eixo horizontal X da esquerda para a direita.
 * 
 * propriedades
 * children -> lista de widgets filhos alinhados horizontalmente 
 * mainAxisAlignment -> alinha os filhos no eixo principal (horizontal)
 * crossAxisAlignment -> alinha os filhos no eixo cruzado (vertical)
 * mainAxisAlignment = define se o row ocupa todo o espaço horizontal ou só o necessario
 * textDirection -> Define a direção do conteudo: LTR(esquerda p/ direita) ou RTL (esquerda p/ direita)
 */
class Widgetrow extends StatelessWidget {
  const Widgetrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.blue,
      child: Row(
        //mainAxisSize: MainAxisSize.min
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Text 1"),
        Text("Text 2"),
        Text("Text 3"),
        Text("Text 4"),
      ],
    ),
    );
  }
}