import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row and Column'),
        ),
        body: Center(
          // child: Row(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // baris pertama
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  KotakBiruJempol(color: Color.fromARGB(255, 224, 224, 12), label: "Favorite 1"),
                  SizedBox(width: 20),
                  KotakBiruJempol(color: Color.fromARGB(255, 200, 0, 0), label: "Favorite 2"),
                ],
              ),
              SizedBox(height: 20), // jarak antar baris
              // baris kedua
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  KotakBiruJempol(color: Color.fromARGB(255, 16, 120, 9), label: "Favorite 3"),
                  SizedBox(width: 20),
                  KotakBiruJempol(color: Color.fromARGB(255, 0, 42, 255), label: "Favorite 4"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color color;
  final String label;

  const KotakBiruJempol({
    super.key,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120, 
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 255, 0, 0),
            size: 40,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 14),
          ),
        ],
      ),
    );
  }
}
