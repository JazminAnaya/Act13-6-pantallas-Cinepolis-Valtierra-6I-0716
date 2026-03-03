import 'package:flutter/material.dart';

class MembresiaScreen extends StatefulWidget {
  const MembresiaScreen({super.key});
  @override
  State<MembresiaScreen> createState() => _MembresiaScreenState();
}

class _MembresiaScreenState extends State<MembresiaScreen> {
  String _opcion = "No tengo membresia";

  @override
  Widget build(BuildContext context) {
    final tipos = ["Fan", "Fanático", "Súper Fanático", "Tradicional", "Premium", "No tengo membresia"];
    return Scaffold(
      appBar: AppBar(title: const Text("Membresía", style: TextStyle(color: Colors.white)), backgroundColor: const Color(0xFF003566)),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(20), child: Text("¿Tienes Membresía?", style: TextStyle(fontSize: 18))),
          ...tipos.map((t) => RadioListTile(
            title: Text(t), value: t, groupValue: _opcion, 
            onChanged: (val) => setState(() => _opcion = val.toString()))),
          const Spacer(),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/registro_completo'), child: const Text("SIGUIENTE")),
        ],
      ),
    );
  }
}