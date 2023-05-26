import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:projeto_principal/aula12/model/produto.dart';

class CarrinhoModel extends ChangeNotifier {
  final List<Produto> _lista = [];

  UnmodifiableListView<Produto> get produtos => UnmodifiableListView(_lista);

  int get numProdutos => _lista.length;

  double get vlTotal {
    //exercício
    return 0;
  }

  void adicionar(Produto p) {
    _lista.add(p);
    notifyListeners();
  }

  void remover(Produto p) {
    _lista.remove(p);
    notifyListeners();
  }

  bool adicionado(Produto p) {
    return _lista.any((produto) => produto.id == p.id);
  }
}
