class Juguete {
  int id;
  String nombre;
  String marca;
  double precio;

  Juguete({
    required this.id,
    required this.nombre,
    required this.marca,
    required this.precio,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'marca': marca,
      'precio': precio,
    };
  }

  @override
  String toString() {
    return 'Juguete(id: $id, nombre: $nombre, marca: $marca, precio: $precio)';
  }
}
