import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://jsonplaceholder.typicode.com";
const apikey = "";
class API{
  
  static Future getListaEventos(){
    var url = baseUrl + "/users";
    return http.get(url);
  }

  static Future setUsuario(ddd,tel){
    var url = baseUrl + "/users";
    return http.post(url,body: {
      'ddd': ddd, 'tel': tel
    });
  }
}