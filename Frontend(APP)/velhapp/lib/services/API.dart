import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

class Services {
  final dio = Dio(); // Instancia do DIO

  final String url = 'https://restcountries.eu/rest/v2/all';

  listaDeEventos() async {
    Response response = await dio.get(this.url);
    return response.data.name;
  }

  eventosPesquisado(String evento) async {
    Response response = await dio.get(this.url + evento);
    return response.data;
  }

  static getData(num page) async {
    var url = 'https://xxxx/images?page=${page}&per_page=10';
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();

    if (response.statusCode == 200) {
      var str = await response.transform(utf8.decoder).join();
      var data = json.decode(str);
      var photos = data['photos'];
      List<String> res = new List();
      for (var i = 0, len = photos.length; i < len; i++) {
        res.add(photos[i]['source']['g']);
      }
      return res;
    }
  }
}
