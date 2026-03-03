import 'package:flutter/material.dart';

class CarteleraScreen extends StatelessWidget {
  const CarteleraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cartelera", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF003566),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // Filtros rápidos (basado en tus dibujos)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(label: Text("Hoy"), backgroundColor: Color(0xFFE3F2FD)),
              Chip(label: Text("Pinocelli"), backgroundColor: Color(0xFFE3F2FD)),
            ],
          ),
          const SizedBox(height: 10),
          // Película 1
          _peliculaConHorarios(
            context, 
            "Avengers", 
            "https://raw.githubusercontent.com/JazminAnaya/Act13-6-pantallas-Cinepolis-Valtierra-6I-0716/refs/heads/main/avnegers1.jpg", 
            ["10:30", "11:30", "12:00", "1:30"]
          ),
          // Película 2
          _peliculaConHorarios(
            context, 
            "Avatar", 
            "https://raw.githubusercontent.com/JazminAnaya/Act13-6-pantallas-Cinepolis-Valtierra-6I-0716/refs/heads/main/avatar.jpg", 
            ["13:30", "1:00", "2:00", "3:30"]
          ),
          // Película 3
          _peliculaConHorarios(
            context, 
            "Star Wars", 
            "https://raw.githubusercontent.com/JazminAnaya/Act13-6-pantallas-Cinepolis-Valtierra-6I-0716/refs/heads/main/star%20wars.jpg", 
            ["4:00", "6:30", "9:00", "10:30"]
          ),
        ],
      ),
      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF003566),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Cartelera"),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: "Alimentos"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Compras"),
        ],
      ),
    );
  }

  Widget _peliculaConHorarios(BuildContext context, String titulo, String url, List<String> horarios) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Color(0xFF003566), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen de la película
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(url, width: 90, height: 130, fit: BoxFit.cover),
            ),
            const SizedBox(width: 15),
            // Información y Horarios
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF003566))),
                  const SizedBox(height: 5),
                  const Text("Horarios disponibles:", style: TextStyle(fontSize: 12, color: Colors.grey)),
                  const SizedBox(height: 8),
                  // Cuadrícula de horarios
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: horarios.map((hora) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(hora, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
                    )).toList(),
                  ),
                  const SizedBox(height: 10),
                  // Botón Ver Más
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF003566),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/detalle_pelicula'),
                      child: const Text("Ver más", style: TextStyle(fontSize: 12)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}