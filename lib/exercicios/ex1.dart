import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? _buildDarkTheme() : _buildLightTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Meu Aplicativo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:
                    isDarkMode
                        ? [Colors.grey.shade900, Colors.black]
                        : [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:
                    isDarkMode
                        ? [Colors.grey.shade800, Colors.black]
                        : [Colors.blue.shade300, Colors.purple.shade300],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors:
                          isDarkMode
                              ? [Colors.grey.shade900, Colors.black]
                              : [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Menu de Navegação',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                _buildDrawerItem(Icons.home, 'Início'),
                _buildDrawerItem(Icons.person, 'Perfil'),
                _buildDrawerItem(Icons.settings, 'Configurações'),
                _buildDrawerItem(Icons.info, 'Sobre'),
                _buildDrawerItem(Icons.logout, 'Sair'),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:
                  isDarkMode
                      ? [Colors.black, Colors.grey.shade900]
                      : [Colors.blue.shade50, Colors.purple.shade50],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Card(
              elevation: 10,
              color: isDarkMode ? Colors.grey.shade800 : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Bem-vindo ao Meu Aplicativo!',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: isDarkMode ? Colors.white : Colors.blue.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: isDarkMode ? Colors.grey.shade900 : Colors.blue,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Rodapé do Aplicativo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: isDarkMode ? Colors.grey.shade700 : Colors.purple,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.grey.shade900,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.grey.shade300),
      ),
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue.shade900,
        ),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
      onTap: () {},
    );
  }
}
