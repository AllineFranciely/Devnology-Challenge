import 'package:http/http.dart' as http;

const baseUrlFornecedor1 =
    "http://616d6bdb6dacbb001794ca17.mockapi.io/devnology/brazilian_provider";

class API {
  static Future getProdutoFornecedor1(search) async {
    var url = baseUrlFornecedor1 + search;
    return await http.get(Uri.parse(url));
  }
}

class ProdutoFornecedor1 {
  int id;
  String nome;
  String descricao;
  String categoria;
  String imagem;
  String preco;
  String material;
  String departamento;

  ProdutoFornecedor1(
    this.id,
    this.nome,
    this.descricao,
    this.categoria,
    this.imagem,
    this.preco,
    this.material,
    this.departamento,
  );

  ProdutoFornecedor1.fromJson(Map json)
      : id = json['show']['id'],
        nome = json['show']['nome'],
        descricao = json['show']['descricao'],
        categoria = json['show']['categoria'],
        imagem = json['show']['imagem'],
        preco = json['show']['preco'],
        material = json['show']['material'],
        departamento = json['show']['departamento'];
}
