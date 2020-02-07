//
//  Podcast.swift
//  Aula02Desafio
//
//  Created by Student on 06/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation

class Podcast {
    
    let name: String
    let tracks: String
    let imagem: String
    
    
    init (name:String, tracks:String, imagem:String) {
       
        self.name = name
        self.tracks = tracks
        self.imagem = imagem
        
    }
    
}

class PodcastDAO {
    
    static func getList() -> [Podcast] {
    
    return [
    
        Podcast(name: "99Vidas", tracks: "No unplayed episodes", imagem: "99vidas"),
        Podcast(name: "Canal42.tv", tracks: "No unplayed episodes", imagem: "canal42"),
        Podcast(name: "MacMagazine no Ar", tracks: "No unplayed episodes", imagem: "mm"),
        Podcast(name: "Não Ouvo", tracks: "No unplayed episodes", imagem: "naoouvo"),
        Podcast(name: "NerdCast", tracks: "No unplayed episodes", imagem: "nerdcast"),
        Podcast(name: "O melhor Podcast do Brasil", tracks: "No unplayed episodes", imagem: "ompdb"),
        Podcast(name: "Rapadura Cast", tracks: "No unplayed episodes", imagem: "rapaduracast"),
        Podcast(name: "Reloading", tracks: "No unplayed episodes", imagem: "reloading"),
        Podcast(name: "SciCast", tracks: "No unplayed episodes", imagem: "scicast")
        
    ]
    }
}
