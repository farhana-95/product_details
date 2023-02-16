
import 'package:http/http.dart' as http;
import 'package:product_details/models/products.dart';

class CallData{
  Future<Product?> getPosts()async{
    var client = http.Client();

    var uri = Uri.parse('https://panel.supplyline.network/api/product/search-suggestions/?format=json&limit=10&offset=10&search=rice');
    var response = await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      return productFromJson(json);
    }

  }
}