import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-preferencia',
  templateUrl: './preferencia.page.html',
  styleUrls: ['./preferencia.page.scss'],
})
export class PreferenciaPage implements OnInit {

  constructor
  (
    private router: Router
  ) { }

  ngOnInit() {
  }

  Cadastrar(){
    this.router.navigate(['/home']);
  }

}
