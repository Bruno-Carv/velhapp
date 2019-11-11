/**
 * Model de manipulação do banco de dados
 * 
 * Diretorio Pai - src/models
 */


//Requerimento de conexão com banco de dados
const banco = require('../database');

module.exports = {

    /**
     * 
     * Metodo de criação, inserindo 
     * os dados no banco de dados 
     * 
     * 
     * @param {*} request 
     * @param {*} response 
     * @return {JSON} 
     */
    async create(request, response){
        let ddd = request.body.ddd;
        let tel = request.body.tel;
        console.log(ddd + '  ' + tel);
        return response.json('create');
        banco.query('INSERT INTO <tabela> VALUES (?)',[],(err, result, fields) => {

        });
    },


    /**
     * 
     * Metodo de Atualização de dados 
     * do banco de dados
     * 
     * 
     * @param {*} request 
     * @param {*} response 
     * @return {JSON}
     * 
     */
    async update(request, response){
        return response.json('update');
        banco.query('UPDATE <tabela> SET <coluna> = ? WHERE <condição> = ?',[],(err, result, fields) => {
            
        });
    },

    /**
     * 
     * Metodo de Leitura dos dados 
     * do banco de dados
     * 
     * 
     * @param {*} request 
     * @param {*} response 
     * @return {JSON}
     * 
     */
    async read(request, response){
        
        let id = request.query.id;
        let data = [{
            'src': '',
            'nome':'bingo'
        }];
        console.log(id);
        return response.json(data);
        
        banco.query('SELECT <dados> FROM <tabela> WHERE <condição> = ?',[],(err, result, fields) => {
            
        });
    },


    /**
     * 
     * Metodo de Delete de dados 
     * do banco de dados
     * 
     * 
     * @param {*} request 
     * @param {*} response 
     * @return {JSON}
     * 
     */
    async delete(request, response){
        return response.json('delete');
        banco.query('DELETE FROM <tabela> WHERE <condição> = ?',[],(err, result, fields) => {
            
        });
    }
}