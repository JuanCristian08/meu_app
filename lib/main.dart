import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_app/Botao.dart';
import 'package:meu_app/Debug.dart';
import 'package:meu_app/cupertino/MyCupertino.dart';
import 'package:meu_app/exercicios/ex1.dart';
import 'package:meu_app/inherited/Userinfos.dart';
import 'package:meu_app/material_widget/my_material.dart';
import 'package:meu_app/stateful/Contador.dart';
import 'package:meu_app/stateful/Darkmode.dart';
import 'package:meu_app/stateful/Loja.dart';
import 'package:meu_app/stateful/RandomNumber.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';
import 'package:meu_app/usandoAssets/Fonts.dart';
import 'package:meu_app/usandoAssets/Imagem.dart';
import 'package:meu_app/widgetLayout/LayoutApp.dart';

/* void main() {
  runApp(Container(
    child: Text(
      "Bem vindo ao Flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.lime, fontSize: 30.0),
    ),
  ));
} */

/**
 * NO FLUTTER TEMOS 3 TIPOS DE ESTADOS DE APLICAÇÃO
 * STATELESS (ESTADO IMUTÁVEL)
 * A UI NUNCA MUDA APÓS SER CONSTRUÍDA
 * É USADO PARA COMPONENTES ESTÁTICOS COMO ÍCONES, TEXTOS FIXOS E ETC.
 * 
 * STATEFUL (ESTADO LOCAL)
 * A UI MUDA QUANDO O ESTADO INTERNO MUDA
 * É USADO EM WIDGETS QUE TEM INTERAÇÃO COM O USUÁRIO, COMO ENTRADAS DE TEXTOS, CARREGAMENTO DE DADOS, ANIMAÇÕES E ETC
 * 
 * INHERITED (ESTADO HERDADO)
 * COMPARTILHA DADOS DESCENDENTES NA ÁRVORE DE WIDGETS
 * ÚTIL PARA DADOS GLOBAIS LEVES COMO TEMAS, IDIOMAS E ETC
 */


  // runApp(SemEstado());
/*   runApp(MaterialApp(
    home: Center(
      child: Botao(),
    ),
  )); */

  // runApp(User());

  //exemplo stateful

 /*  runApp(MaterialApp(
    home: Contador(),
  )); */

  //runApp(DarkMode());

  //runApp(MyCupertino());

  //como decidir qual widget usar?

 
void main(){

 /*  if(Platform.isAndroid){
    runApp(MyMaterial());
  } else {
    runApp(MyCupertino());
  } */

 runApp(const MaterialApp(home: Debug(numeroMaximo: 10),));
}