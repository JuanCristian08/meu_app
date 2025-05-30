import 'package:flutter/material.dart';
import 'package:meu_app/widgetLayout/WidgetColumn.dart';
import 'package:meu_app/widgetLayout/WidgetContainer.dart';
import 'package:meu_app/widgetLayout/WidgetRow.dart';

class Layoutapp extends StatelessWidget {
  const Layoutapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widget de layout",
      home: MontandoTela(),
    );
  }
}

class MontandoTela extends StatefulWidget {
  const MontandoTela({super.key});

  @override
  State<MontandoTela> createState() => _MontandoTelaState();
}

class _MontandoTelaState extends State<MontandoTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de layout"),),
      body:Widgetrow(),
    );
  }
}