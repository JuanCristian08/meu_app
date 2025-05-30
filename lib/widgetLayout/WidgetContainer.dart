import 'package:flutter/material.dart';

/**
 * widget container é um bloco de construção visual que permite  controlar layout,
 * espaçamento, cor, bordas, tranformação e muito mais.
 * FUNÇÕES DO CONTAINER
 * widht / height -> largura e altura fixas
 * padding -> espaço interno (preenchimento) dentro do container
 * margin -> espaço externo (fora do container)
 * color -> cor de fundo do container
 * alignment -> alinha o elemento filho dentro do container 
 * decoration -> estilo visual completo (cores, bordas, sombreamentoe etc.)
 * child -> o conteudo do container (filho)
 * constraints -> limita dimensões (minimos e maximo)
 * transform -> aplica rotação, escala, transformação e etc
 */

import 'package:flutter/material.dart';

class Widgetcontainer extends StatelessWidget {
  const Widgetcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(16),
      color: Colors.red,
      alignment: Alignment.center,
      child: Container(
        width: 50,
        height: 50,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white, 
          border: Border.all(
            color: Colors.cyan,
            width: 6,
          ),
          borderRadius:  BorderRadius.circular(12)
        ),
      ),
    );
  }
}
