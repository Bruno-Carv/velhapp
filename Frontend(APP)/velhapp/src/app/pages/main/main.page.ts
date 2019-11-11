import { Component, OnInit } from '@angular/core';
import { MenuController } from '@ionic/angular';
import { ApiNodeService } from '../../service/api-node.service';

@Component({
  selector: 'app-main',
  templateUrl: './main.page.html',
  styleUrls: ['./main.page.scss'],
})
export class MainPage implements OnInit {

  public Eventos;

  constructor(
    private menu: MenuController,
    private api: ApiNodeService,
  ) {
    this.menu.enable(true, 'menuIdoso');
  }

  ngOnInit() {
  }

  loadData(event) {
    setTimeout(() => {
      this.api.ListaEventos('1').then((result) => {
        result = JSON.parse(result.data);
        this.Eventos = result;
      })
      event.target.complete();
      event.target.disabled = true;
    }, 500);
  }
}
