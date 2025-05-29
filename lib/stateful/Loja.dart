import 'package:flutter/material.dart';

class Loja extends StatefulWidget {
  @override
  _LojaState createState() => _LojaState();
}

class _LojaState extends State<Loja> {
  bool isAberta = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Status da Loja",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: isAberta ? Colors.green : Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SwitchListTile(
                  title: Text(
                    isAberta ? 'Aberto' : 'Fechado',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isAberta ? Colors.green : Colors.red,
                    ),
                  ),
                  value: isAberta,
                  onChanged: (bool value) {
                    setState(() {
                      isAberta = value;
                    });
                  },
                  secondary: Icon(
                    isAberta ? Icons.lock_open : Icons.lock,
                    color: isAberta ? Colors.green : Colors.red,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                isAberta ? 'A loja está aberta' : 'A loja está fechada',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: isAberta ? Colors.green : Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: isAberta ? Colors.green[100] : Colors.red[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isAberta ? Icons.store : Icons.store_mall_directory,
                  size: 80,
                  color: isAberta ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}