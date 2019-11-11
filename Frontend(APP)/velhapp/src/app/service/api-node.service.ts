import { Injectable } from '@angular/core';
import { HTTP } from '@ionic-native/http/ngx';

@Injectable({
  providedIn: 'root'
})
export class ApiNodeService {

  constructor
    (
      private http: HTTP,
  ) { }

  private API_url = 'http://192.168.0.53:3333';
  private Key = '6d4855307e312e716338354c2b4f3e756b7a4b586222365e2f24287a70';

  SignUp(DDD: string, Telefone: string) {
    this.http.setDataSerializer('json');
    let data = {
      'ddd': DDD,
      'tel': Telefone
    };
    let headers = {
      'Content-Type': 'application/json'
    };
    return this.http.post(this.API_url + '/post?apikey=' + this.Key,data,headers);
  }

  ListaEventos(preferencias: JSON) {
    return this.http.get(this.API_url + '/get?apikey=' + this.Key, preferencias, {});
  }

  DeletarFavoritos(id: Int8Array) {
    return this.http.delete(this.API_url + '/delete?apikey=' + this.Key, {}, {});
  }

  AtualizarPreferencia(preferencias: JSON) {
    return this.http.put(this.API_url + '/put?apikey=' + this.Key, preferencias, {});
  }
}
