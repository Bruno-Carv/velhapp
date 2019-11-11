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

  private API_url = '';
  
  SignUp(DDD: string, Telefone: string) {
    return this.http.post(this.API_url+'',{},{});
  }

  ListaEventos(preferencias: JSON){
    return this.http.get(this.API_url+'',preferencias,{});
  }

  DeletarFavoritos(id: Int8Array){
    return this.http.delete(this.API_url+'',{},{});
  }

  AtualizarPreferencia(preferencias: JSON){
    return this.http.put(this.API_url+'',preferencias,{});
  }
}
