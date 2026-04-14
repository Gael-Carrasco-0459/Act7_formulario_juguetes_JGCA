import 'package:flutter/material.dart';
import 'diccionariojuguetes.dart';
import 'clasejuguetes.dart';

class VerJuguetesPantalla extends StatelessWidget {
  const VerJuguetesPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    List<Juguete> listaJuguetes = datosjuguetes.values.toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Ver Juguetes'),
        backgroundColor: Colors.red[900],
        foregroundColor: Colors.white,
      ),
      body: listaJuguetes.isEmpty
          ? const Center(
              child: Text(
                'No hay juguetes registrados',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: listaJuguetes.length,
              itemBuilder: (context, index) {
                final juguete = listaJuguetes[index];
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text('${juguete.id}'),
                    ),
                    title: Text(
                      juguete.nombre,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Marca: ${juguete.marca}\nPrecio: \$${juguete.precio.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.black87),
                    ),
                    isThreeLine: true,
                  ),
                );
              },
            ),
    );
  }
}
