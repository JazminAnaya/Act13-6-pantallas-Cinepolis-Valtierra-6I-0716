import 'package:flutter/material.dart';

class SucursalScreen extends StatefulWidget {
  const SucursalScreen({super.key});
  @override
  State<SucursalScreen> createState() => _SucursalScreenState();
}

class _SucursalScreenState extends State<SucursalScreen> {
  final List<String> seleccionadas = [];
  final sucursales = ["Misiones", "Las Torres", "Gran Patio", "Pinocelli", "Sendero", "Las Americas", "La Monumental", "Plaza Arena", "Juarez Centro Mall"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sucursales", style: TextStyle(color: Colors.white)), backgroundColor: const Color(0xFF003566)),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Eliga hasta 3 Sucursales de Preferencia", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sucursales.length,
              itemBuilder: (context, i) {
                final nombre = sucursales[i];
                return CheckboxListTile(
                  title: Text(nombre),
                  value: seleccionadas.contains(nombre),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true && seleccionadas.length < 3) {
                        seleccionadas.add(nombre);
                      } else if (value == false) {
                        seleccionadas.remove(nombre);
                      }
                    });
                  },
                );
              },
            ),
          ),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/membresia'), child: const Text("SIGUIENTE")),
        ],
      ),
    );
  }
}