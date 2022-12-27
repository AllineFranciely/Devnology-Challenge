import 'dart:html';

import 'package:flutter/material.dart';
import 'produtosFornecedor1.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  build(context) {
    return const MaterialApp(
      title: 'Produtos',
      home: ProdutosFornecedor1ListView(),
    );
  }
}
