void main() {
  List<int> a = [5, 10, 15, 20, 25];

  List<int> resultado = primeiraEultima(a);

  print('Lista original: $a');
  print('Nova lista (primeiro e último elementos): $resultado');
}
List<int> primeiraEultima(List<int> lista) {
  if (lista.isEmpty) {
    return []; 
  } else if (lista.length == 1) {
    return [lista.first];
  } else {
    return [lista.first, lista.last];
  }
}