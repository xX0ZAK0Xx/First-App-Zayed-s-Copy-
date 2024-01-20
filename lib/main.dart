import 'package:flutter/material.dart';

void main() {
  // ekhon amon ekta function nibo ja amar app take run korbe
  runApp(const MyApp(name: "Wasee",));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 48, 2),
            leading: const Icon(Icons.menu, size: 30, color: Colors.grey),
              actions: const [Icon(Icons.search, size: 30, color: Colors.grey)],
                title: const Text("This is my first app",style: TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  ),
                backgroundColor:Colors.grey,
              body: Center(
            child: Text(name, style: const TextStyle(color: Color.fromARGB(255, 0, 52, 2), fontSize: 50),
          ),
        ),
      ),
    );
  }
}
