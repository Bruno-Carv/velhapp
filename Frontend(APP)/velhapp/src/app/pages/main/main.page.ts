import { Component, OnInit } from '@angular/core';
import { MenuController } from '@ionic/angular';

@Component({
  selector: 'app-main',
  templateUrl: './main.page.html',
  styleUrls: ['./main.page.scss'],
})
export class MainPage implements OnInit {

  public Eventos = [{
    src:'https://www.clickfozdoiguacu.com.br/wp-content/uploads/2017/09/nosso-canto-1200x628-1024x536.png',
    nome: 'Bingo'
  },
  {
    src:'https://www.clickfozdoiguacu.com.br/wp-content/uploads/2017/09/nosso-canto-1200x628-1024x536.png',
    nome: 'Bingo'
  },
  {
    src:'https://www.clickfozdoiguacu.com.br/wp-content/uploads/2017/09/nosso-canto-1200x628-1024x536.png',
    nome: 'Bingo'
  },
  {
    src:'https://www.clickfozdoiguacu.com.br/wp-content/uploads/2017/09/nosso-canto-1200x628-1024x536.png',
    nome: 'Bingo'
  },
  ]

  constructor(
    private menu: MenuController,
  ) {
    this.menu.enable(true, 'menuIdoso');
  }

  ngOnInit() {
  }

  loadData(event) {
    setTimeout(() => {
      event.target.complete();
      event.target.disabled = true;
    }, 500);
  }
}
