import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void _processPayment(BuildContext context) {
    // Simulación del sensor biométrico del documento (Huella/Facial)
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.fingerprint, size: 30, color: Colors.purple),
            SizedBox(width: 10),
            Text('Autenticación Requerida'),
          ],
        ),
        content: const Text('Confirma tu pago utilizando la huella digital o reconocimiento facial de tu dispositivo.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('¡Pago verificado exitosamente! Comprobante generado.')),
              );
            },
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.checkroom),
                  title: Text('Playera Casual'),
                  subtitle: Text('Cantidad: 1'),
                  trailing: Text('\$299.99'),
                ),
              ],
            ),
          ),
          const Divider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('\$299.99', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple)),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _processPayment(context),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.purple,
            ),
            child: const Text('Proceder al Pago Seguro', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}