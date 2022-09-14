//
//  Ricetta.swift
//  CookMo
//
//  Created by Alfredo Fiore on 14/09/22.
//

import Foundation

struct Ricetta: Hashable {
    
    var nomePiatto: String
    var tipoPiatto: String
    var difficolta: String
    var tempoPrep: String
    var costo : String
    
    init(nomePiatto: String, tipopiatto: String, difficolta: String, tempoPrep: String, costo: String){
        self.nomePiatto = nomePiatto
        self.tipoPiatto = tipopiatto
        self.difficolta = difficolta
        self.tempoPrep = tempoPrep
        self.costo = costo
    }
}
