import 'package:flutter/material.dart';

class TarjetaScreen extends StatefulWidget {
  const TarjetaScreen({super.key});
  @override
  State<TarjetaScreen> createState() => _TarjetaScreenState();
}

class _TarjetaScreenState extends State<TarjetaScreen> {
  final _titular = TextEditingController();
  final _numero = TextEditingController();
  final _vencimiento = TextEditingController();
  final _cvv = TextEditingController();

  void _validarYAvanzar() {
    if (_titular.text.isNotEmpty && _numero.text.isNotEmpty && 
        _vencimiento.text.isNotEmpty && _cvv.text.isNotEmpty) {
      Navigator.pushNamed(context, '/sucursal');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Por favor, llena todos los campos para continuar")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de Tarjeta", style: TextStyle(color: Colors.white)), backgroundColor: const Color(0xFF003566)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Ingresa los datos de tu tarjeta para pagos futuros", 
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            _input("Titular", _titular),
            _input("Número de tarjeta", _numero),
            _input("Fecha de vencimiento", _vencimiento),
            _input("CVV", _cvv),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF003566), minimumSize: const Size(double.infinity, 50)),
              onPressed: _validarYAvanzar,
              child: const Text("SIGUIENTE", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _input(String label, TextEditingController controller) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: TextField(controller: controller, decoration: InputDecoration(labelText: label, border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)))),
  );
}