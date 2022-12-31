import 'package:http/http.dart' as http;

const baseUrlFornecedor2 =
    "http://616d6bdb6dacbb001794ca17.mockapi.io/devnology/european_provider";

class API {
  static Future getProdutoFornecedor2() async {
    var url = baseUrlFornecedor2;
    return await http.get(Uri.parse(url));
  }
}

class ProdutoFornecedor2 {
  String name;
  String description;
  String price;

  ProdutoFornecedor2(
    this.name,
    this.description,
    this.price,
  );

  ProdutoFornecedor2.fromJson(Map json)
      : name = json['name'],
        description = json['description'],
        price = json['price'];
}
