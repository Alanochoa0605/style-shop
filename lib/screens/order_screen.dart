import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pedido #ST78492', style: TextStyle(fontWeight: FontWeight.bold)),
                      Chip(
                        label: Text('En Camino', style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.orange,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('Artículos: 1x Playera Casual'),
                  const SizedBox(height: 4),
                  Text('Fecha de compra: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}