import 'package:flutter/material.dart';
// import 'package:produtosForncedor1/details.dart';
import 'dart:convert';
import 'apiFornecedor1.dart';

class ProdutosForncedor1ListView extends StatefulWidget {
  const ProdutosForncedor1ListView({super.key});

  @override
  State<StatefulWidget> createState() => _ProdutosForncedor1ListViewState();
}

class _ProdutosForncedor1ListViewState
    extends State<ProdutosForncedor1ListView> {
  List<ProdutoFornecedor1> produtosForncedor1 =
      List<ProdutoFornecedor1>.empty();
  String search = "Refined Plastic Bike";

  _ProdutosForncedor1ListViewState() {
    API.getProdutoFornecedor1(search).then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        produtosForncedor1 =
            list.map((model) => ProdutoFornecedor1.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de produtos Forncedor 1'),
      ),
      body: ListView.builder(
        itemCount: produtosForncedor1.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                produtosForncedor1[index].imagem,
              ),
            ),
            title: Text(
              produtosForncedor1[index].nome,
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
