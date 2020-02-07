//
//  AmareloViewController.swift
//  AulaStoryBoardUniville
//
//  Created by Student on 07/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class AmareloViewController: UIViewController {
    
   
    @IBOutlet weak var corTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "novaCor" {
            
            if let novaView = segue.destination as? NovaCorViewController {
                
                novaView.cor = corTextField.text
                
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
