import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MenuController } from '@ionic/angular';
import { SecureStorage, SecureStorageObject } from '@ionic-native/secure-storage/ngx';
import { ApiNodeService } from '../service/api-node.service';
@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  ddd: string;
  tel: string;

  constructor
    (
      private router: Router,
      private menu: MenuController,
      private secureStorage: SecureStorage,
      private api: ApiNodeService
    ) {
    this.menu.enable(false, 'menuIdoso');
  }

  ngOnInit() {
  }

  MascaraTelefone() {
    this.tel = this.tel.replace(/\D/g, "");
    this.tel = this.tel.replace(/(\d{5})(\d)/, "$1-$2");
  }


  SignUp() {
    if (this.ddd.length > 0 && this.tel.length > 0) {
      this.api.SignUp(this.ddd,this.tel).then((result) => {
        this.secureStorage.create('velhapp')
        .then((storage: SecureStorageObject) => {
          storage.set('Idoso', result.data)
            .then(
              data => console.log(data),
              error => console.log(error)
            );
        });
        this.router.navigate(['/main']);
      }) 
    }
  }

}
