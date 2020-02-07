//
//  NovaCorViewController.swift
//  AulaStoryBoardUniville
//
//  Created by Student on 07/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class NovaCorViewController: UIViewController {
    
    @IBOutlet weak var corLabel: UILabel!
    
    var cor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        corLabel.text = cor
        
        if cor != nil {
            
            switch cor!.lowercased() {
            case "verde":
                self.view.backgroundColor = UIColor.green
                
            case "roxo":
                self.view.backgroundColor = UIColor.purple
                
            case "rosa":
                self.view.backgroundColor = UIColor.magenta
                
            default:
                self.view.backgroundColor = UIColor.black
            }
            
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
