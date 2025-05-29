import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Título do App",
      home: Tela(),
    );
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<StatefulWidget> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MarkeTool Finance"),
        backgroundColor: Colors.indigo,
      ),

      body: Text("Corpo do Aplicativo"),
      backgroundColor: Colors.white70,

      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Menu", 
                style: GoogleFonts.robotoMono(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            ListTile(title: Text("HOME")),
            ListTile(title: Text("PRODUTOS")),
            ListTile(title: Text("SERVIÇOS")),
            ListTile(title: Text("CONTATO")),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text("Rodapé"),
        ),
      ),
    );
  }
}