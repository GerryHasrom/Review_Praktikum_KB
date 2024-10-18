import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nama Kalian"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context, "Peringatan", "Ini adalah contoh Alert Dialog yang dinamis.");
          },
          child: const Text("Tampilkan Alert Dialog"),
        ),
      ),
    );
  }

  Future<dynamic> showAlertDialog(BuildContext context, String judul, String konten) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(judul),
          content: Text(konten),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
