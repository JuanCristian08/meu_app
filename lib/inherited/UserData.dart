import 'package:flutter/material.dart';

class Userdata extends InheritedWidget {
  final String username;

  const Userdata({
    required this.username,
    required Widget child, //widget filho que herda o nome 
  }) : super(child: child);//passa o filho para o construtor pai

  static Userdata of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<Userdata>();
    return result!;
  }

  @override
  bool updateShouldNotify(Userdata oldWidget) {
    return oldWidget.username != username;
  }
}
