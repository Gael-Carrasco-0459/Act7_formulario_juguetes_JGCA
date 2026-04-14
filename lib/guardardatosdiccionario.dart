import 'clasejuguetes.dart';
import 'diccionariojuguetes.dart';

class GuardarDatosDiccionario {
  // Método princpal para agregar un juguete con ID autoincremental
  static void agregarJuguete(String nombre, String marca, double precio) {
    // Calculamos el ID autoincremental (si el map está vacío, es 1. Sino, el último id + 1)
    int nuevoId = 1;
    if (datosjuguetes.isNotEmpty) {
      // Obtenemos todos los keys (que son los IDs) y buscamos el máximo
      int maxId = datosjuguetes.keys.reduce((a, b) => a > b ? a : b);
      nuevoId = maxId + 1;
    }

    // Creamos el nuevo juguete
    var nuevoJuguete = Juguete(
      id: nuevoId,
      nombre: nombre,
      marca: marca,
      precio: precio,
    );

    // Lo agregamos en el diccionario global usando el nuevoId como llave
    datosjuguetes[nuevoId] = nuevoJuguete;
    
    print("Juguete guardado: ${nuevoJuguete.toString()}");
  }
}
