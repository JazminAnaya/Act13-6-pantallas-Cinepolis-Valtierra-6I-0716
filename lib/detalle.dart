import 'package:flutter/material.dart';

class DetallePeliculaScreen extends StatelessWidget {
  const DetallePeliculaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalles de la Película", style: TextStyle(color: Colors.white)), backgroundColor: const Color(0xFF003566)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.network("https://raw.githubusercontent.com/JazminAnaya/Act13-6-pantallas-Cinepolis-Valtierra-6I-0716/refs/heads/main/avengers2.jpg", height: 300)),
              const SizedBox(height: 20),
              const Text("Avengers", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF003566))),
              const Divider(),
              const Text("Clasificación: PG13 | Director: Joss Whedon"),
              const Text("Duración: 200 min"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber), Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber), Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_half, color: Colors.amber),
                  Text(" (4.5/5)"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Sinopsis:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const Text(
                "Cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial, Nick Fury, director de la Agencia SHIELD, decide reclutar a un equipo para salvar al mundo de un desastre casi seguro. Los héroes más poderosos de la Tierra deberán aprender a trabajar juntos para detener al temible Loki y su ejército alienígena.",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("REGRESAR"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}