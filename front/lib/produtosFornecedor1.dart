import 'package:flutter/material.dart';
import 'dart:convert';
import 'apiFornecedor1.dart';

class ProdutosFornecedor1ListView extends StatefulWidget {
  const ProdutosFornecedor1ListView({super.key});

  @override
  State<ProdutosFornecedor1ListView> createState() =>
      _ProdutosFornecedor1ListViewState();
}

class _ProdutosFornecedor1ListViewState
    extends State<ProdutosFornecedor1ListView> {
  List<ProdutoFornecedor1> produtosFornecedor1 =
      List<ProdutoFornecedor1>.empty();

  _ProdutosFornecedor1ListViewState() {
    API.getProdutoFornecedor1().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        produtosFornecedor1 =
            lista.map((model) => ProdutoFornecedor1.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de produtos do Forncedor 1"),
        ),
        body: ListView.builder(
            itemCount: produtosFornecedor1.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    produtosFornecedor1[index].imagem,
                  ),
                ),
                title: Text(
                  produtosFornecedor1[index].nome,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(produtosFornecedor1[index].preco),
              );
            }));
  }
}
