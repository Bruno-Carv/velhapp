import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-preferencia',
  templateUrl: './preferencia.page.html',
  styleUrls: ['./preferencia.page.scss'],
})
export class PreferenciaPage implements OnInit {

  produtosMarcados: any;
  checkBoxList:any;
  isChecked: boolean;


  constructor
  (
    private router: Router,
    private alertController: AlertController
  ) 
  {

    this.produtosMarcados = [];

    this.checkBoxList = [
      {
        id: 1,
        value:"Esteban Gutmann IV",
        isChecked:false
      },{
        id: 2,
        value:"Bernardo Prosacco Jr.",
        isChecked:false
      },{
        id: 3,
        value:"Nicholaus Kulas PhD",
        isChecked:false
      },{
        id: 4,
        value:"Jennie Feeney",
        isChecked:false
      },{
        id: 5,
        value:"Shanon Heaney",
        isChecked:false
      }
    ];
  }

  ngOnInit() {
  }

  Cadastrar(){
    this.router.navigate(['/home']);
  }

  checkEvent(preferencia) {
    const totalItems = this.checkBoxList.length;
    let checked = 0;
    this.checkBoxList.map(obj => {
      if (obj.isChecked) checked++;
    });
    if(checked === 3){
      this.Cadastrar();
    }   
  }


  async presentAlert(texto) {
    const alert = await this.alertController.create({
      header: 'Alert',
      subHeader: texto,
      message: 'This is an alert message.',
      buttons: ['OK']
    });

    await alert.present();
  }
}
