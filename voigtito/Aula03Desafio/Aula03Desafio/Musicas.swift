//
//  Musicas.swift
//  Aula03Desafio
//
//  Created by Student on 07/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

class Musicas {
    
    let titulo: String
    let subtitle: String
    
    
    init (titulo: String, subtitle: String) {
        
        self.titulo = titulo
        self.subtitle = subtitle
        
    }
    
}

class MusicasDAO {
    
    static func getList() -> [Musicas] {
        
        return [
        
            Musicas(titulo: "musica1", subtitle: "subtitulo"),
            Musicas(titulo: "musica2", subtitle: "subtitulo"),
            Musicas(titulo: "musica3", subtitle: "subtitulo"),
            Musicas(titulo: "musica4", subtitle: "subtitulo"),
            Musicas(titulo: "musica5", subtitle: "subtitulo")
        
        
        ]
    }
}

