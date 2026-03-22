import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // constructor hai yeh bhai 
  @override
  Widget build(BuildContext context) {
    return const Text("hello,Niteen Mandloi", textDirection: TextDirection.ltr,);
  }
}
