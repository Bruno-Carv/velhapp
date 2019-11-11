import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MenuController } from '@ionic/angular';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  isLogin: boolean = true;//Menu
  ddd: string;
  tel: string;

  constructor
  (
    private router: Router,
    private menu: MenuController,
  ) 
  {
    this.menu.enable(false, 'menuIdoso');
  }

  ngOnInit() {
  }

  MascaraTelefone() {
    this.tel = this.tel.replace(/\D/g, "");
    this.tel = this.tel.replace(/(\d{5})(\d)/, "$1-$2");
  }


  SignUp(){
    if(this.ddd.length > 0 && this.tel.length > 0){
      this.router.navigate(['/main']);
    }
  }

}
