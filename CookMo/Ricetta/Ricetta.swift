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

struct Ingrediente: Hashable {
    
    var nome: String
    var quantita: Float
    var uMisura: String
    
    init(nome: String, quantita: Float, uMisura: String){
        self.nome = nome
        self.quantita = quantita
        self.uMisura = uMisura
    }
}

struct StepProcedimento: Hashable {
    
    var nome: String?
    var descrizione: String
    var immagini: [String]
    
    init(nome: String? = nil, descrizione: String, immagini: [String]){
        self.nome = nome
        self.descrizione = descrizione
        self.immagini = immagini
    }
}
