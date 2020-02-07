//
//  Animal.swift
//  AulaTableViewUniville
//
//  Created by Student on 06/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

class Animal {
    
    let nome: String
    let especie: String
    let foto: String
    
    init (nome: String, especie: String, foto: String) {
        
        self.nome = nome
        self.especie = especie
        self.foto = foto
        
    }
    
}

class AnimalDAO {
    
    static func getList() -> [Animal] {
        
        return [
        
            Animal(nome: "Snoopy", especie: "Cachorro", foto: "cachorro"),
            Animal(nome: "Donald", especie: "Pato", foto: "pato"),
            Animal(nome: "Jack", especie: "Canguru", foto: "canguru"),
            Animal(nome: "Zé", especie: "Papagaio", foto: "papagaio"),
            Animal(nome: "Camel", especie: "Camelo", foto: "camelo")
            
        ]
        
    }
    
}
