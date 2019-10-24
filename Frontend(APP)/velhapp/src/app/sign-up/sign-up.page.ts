import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.page.html',
  styleUrls: ['./sign-up.page.scss'],
})
export class SignUpPage implements OnInit {

  ddd: string;
  tel: string;

  constructor
  (
    private router: Router
  ) { }

  ngOnInit() {
  }

  MascaraTelefone() {
    this.tel = this.tel.replace(/\D/g, "");
    this.tel = this.tel.replace(/(\d{5})(\d)/, "$1-$2");
  }


  SignUp(){
    if(this.ddd.length > 0 && this.tel.length > 0){
      this.router.navigate(['/preferencia']);
    }
  }

}
