import 'package:flutter/cupertino.dart';
import 'package:meu_app/cupertino/TelaCupertino.dart';

class MyCupertino extends StatelessWidget{
  const MyCupertino ({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Aplicativo Cupertino",
      home: TelaCupertino(),
    );
  }
}
    
