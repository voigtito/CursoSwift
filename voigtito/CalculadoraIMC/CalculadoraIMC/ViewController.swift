//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Student on 05/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var resultadoIMC: UITextField!
    
    @IBOutlet weak var pesoKg: UITextField!
    
    @IBOutlet weak var alturaMetros: UITextField!
    
    @IBAction func botaoCalcular(_ sender: Any) {
        
        var peso:Double! = Double(pesoKg.text!)
        var altura:Double! = Double(alturaMetros.text!)
        var result:Double! = peso / altura
        
        resultadoIMC.text = String(result)
       
    }
    
}

