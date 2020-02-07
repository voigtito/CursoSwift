//
//  AnimalTableViewController.swift
//  AulaTableViewUniville
//
//  Created by Student on 06/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    
    var animais = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad() //metodo responsavel por carregar todo tipo de componente na tela, tudo aqui sera executado

        //trazendo todos os animais na AnimalDAO
        animais = AnimalDAO.getList()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1 //numero de sessoes
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animais.count //numero de animais do array
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // utiliza o identificador do stack view da cell configurado no main.storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        
        // a constante está sendo convertida para os tipos de componentes da ceula
        if let animalCell = cell as? AnimalTableViewCell {
            
            // pega linha por linha do array criado anteriormente
            let animal = animais[indexPath.row]
            
            animalCell.nome.text = animal.nome
            animalCell.especie.text = animal.especie
            animalCell.foto.image = UIImage(named: animal.foto)
            
            return animalCell
            
        }

        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
