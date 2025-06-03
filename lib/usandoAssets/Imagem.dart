import 'package:flutter/material.dart';

class ImagemPage extends StatelessWidget {
  const ImagemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagens no App",
      home: Scaffold(
        appBar: AppBar(
        title: Text("Inserindo Imagem"),
        ),
        body: Center(
          child: Image.asset("16819653296440c111dd52c_1681965329_3x2_md.jpg", width: 100,),
        ),
      ),
    );
  }
}