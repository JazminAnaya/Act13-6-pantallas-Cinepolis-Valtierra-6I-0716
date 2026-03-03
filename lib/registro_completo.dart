import 'package:flutter/material.dart';

class RegistroCompletoScreen extends StatelessWidget {
  const RegistroCompletoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 80, color: Colors.blue),
            const Text("¡Gracias!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text("¡Tu registro está COMPLETO!"),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/cartelera'), child: const Text("OK")),
          ],
        ),
      ),
    );
  }
}