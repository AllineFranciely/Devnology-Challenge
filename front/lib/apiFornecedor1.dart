import 'package:http/http.dart' as http;

const baseUrlFornecedor1 =
    "http://616d6bdb6dacbb001794ca17.mockapi.io/devnology/brazilian_provider";

class API {
  static Future getProdutoFornecedor1() async {
    var url = baseUrlFornecedor1;
    return await http.get(Uri.parse(url));
  }
}

class ProdutoFornecedor1 {
  String nome;
  String descricao;
  String categoria;
  String imagem;
  String preco;
  String material;
  String departamento;

  ProdutoFornecedor1(
    this.nome,
    this.descricao,
    this.categoria,
    this.imagem,
    this.preco,
    this.material,
    this.departamento,
  );

  ProdutoFornecedor1.fromJson(Map json)
      : nome = json['nome'],
        descricao = json['descricao'],
        categoria = json['categoria'],
        imagem = json['imagem'],
        preco = json['preco'],
        material = json['material'],
        departamento = json['departamento'];
}
