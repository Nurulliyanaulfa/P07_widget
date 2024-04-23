import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Deskripsi Hari',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // Method untuk menampilkan deskripsi hari
  void showDescription(BuildContext context, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: const Text('Deskripsi Hari'),
          content: Text(description),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deskripsi Hari'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button untuk setiap hari dengan jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Hari yang luar biasa untuk memulai pekerjaanmu.');
              },
              child: const Text('Senin'),
            ),
            const SizedBox(height: 8), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Tetap semangat mengerjakan tugas.');
              },
              child: const Text('Selasa'),
            ),
            const SizedBox(height: 8), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.');
              },
              child: const Text('Rabu'),
            ),
            const SizedBox(height: 8), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Kerja keras untuk menggapai cita-cita.');
              },
              child: const Text('Kamis'),
            ),
            const SizedBox(height: 8), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Jangan lupa untuk beribadah.');
              },
              child: const Text('Jumat'),
            ),
            const SizedBox(height: 8), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Selamat weekend.');
              },
              child: const Text('Sabtu'),
            ),
            const SizedBox(height: 8), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                showDescription(context, 'Manfaatkan hari minggumu untuk istirahat.');
              },
              child: const Text('Minggu'),
            ),
          ],
        ),
      ),
    );
  }
}
