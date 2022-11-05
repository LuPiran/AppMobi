import 'dart:convert';

import 'package:app_mobi/model/eletroposto.dart';
import 'package:http/http.dart' as http;

class EletropostoApi {

  

  Future<List> pegarEletroposto() async {
    var url = Uri.parse('https://eletroposto20221027133550.azurewebsites.net/api/eletroposto');
    var response = await http.get(url);

    if(response.statusCode == 200){
      return jsonDecode(utf8.decode(response.bodyBytes));
    }else{
      throw Exception("Erro ao carregar dados do Servidor");
    }
  }

  Future<Eletroposto?> findEletroposto(String eletroposto) async{
    final url = Uri.parse('https://eletroposto20221027133550.azurewebsites.net/api/$eletroposto');
    var response = await http.get(url);

    if(response.statusCode == 200){
      var json = jsonDecode(response.body);
      var eletroposto = Eletroposto.fromJson(json);
      return eletroposto;
    }else{
      return null;
    }
  }

}
