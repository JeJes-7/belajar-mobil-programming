import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Aplikasi ini dibuat untuk menampilkan katalog produk dimsum.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
