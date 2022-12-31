import 'package:flutter/material.dart';
// import 'package:produtosForncedor1/details.dart';
import 'dart:convert';
import 'apiFornecedor2.dart';

class ProdutosForncedor2ListView extends StatefulWidget {
  const ProdutosForncedor2ListView({super.key});

  @override
  State<StatefulWidget> createState() => _ProdutosForncedor2ListViewState();
}

class _ProdutosForncedor2ListViewState
    extends State<ProdutosForncedor2ListView> {
  List<ProdutoFornecedor2> produtosForncedor2 =
      List<ProdutoFornecedor2>.empty();

  _ProdutosForncedor2ListViewState() {
    API.getProdutoFornecedor2().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        produtosForncedor2 =
            list.map((model) => ProdutoFornecedor2.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de produtos Forncedor 2'),
      ),
      body: ListView.builder(
        itemCount: produtosForncedor2.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              produtosForncedor2[index].name,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
