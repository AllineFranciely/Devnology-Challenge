import 'package:flutter/material.dart';
import 'dart:convert';
import 'apiFornecedor2.dart';

class ProdutosFornecedor2ListView extends StatefulWidget {
  const ProdutosFornecedor2ListView({super.key});

  @override
  State<ProdutosFornecedor2ListView> createState() =>
      _ProdutosFornecedor2ListViewState();
}

class _ProdutosFornecedor2ListViewState
    extends State<ProdutosFornecedor2ListView> {
  List<ProdutoFornecedor2> produtosFornecedor2 =
      List<ProdutoFornecedor2>.empty();

  _ProdutosFornecedor2ListViewState() {
    API.getProdutoFornecedor2().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        produtosFornecedor2 =
            lista.map((model) => ProdutoFornecedor2.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de produtos do Fornecedor 2"),
        ),
        body: ListView.builder(
            itemCount: produtosFornecedor2.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    produtosFornecedor2[index].imagem,
                  ),
                ),
                title: Text(
                  produtosFornecedor2[index].nome,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(produtosFornecedor2[index].preco),
              );
            }));
  }
}
