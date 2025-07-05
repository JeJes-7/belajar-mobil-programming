import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nama: Muhammad Shayyoe',
                  style: TextStyle(fontSize: 18),
                ),
                Text('NIM: 23820012', style: TextStyle(fontSize: 18)),
                Text('Kelas: Karyawan 4C', style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                Text('Kontak: 087829324530', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
