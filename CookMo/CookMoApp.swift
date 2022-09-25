//
//  CookMoApp.swift
//  CookMo
//
//  Created by Alfredo Fiore on 12/08/22.
//

import SwiftUI

@main
struct CookMoApp: App {
    var body: some Scene {
        var ricettaLista: [Ricetta] = []
        
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        
        let count = 1...10
        for _ in count { listaIngr.append(Ingrediente(nome: "farina", quantita: 23.5, uMisura: "g", isSelezionato: false))
        }
        
        ricettaLista.append(Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", listaIngredinti: listaIngr))
        ricettaLista.append(Ricetta(nomePiatto: "carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso", listaIngredinti: listaIngr))
        ricettaLista.append(Ricetta(nomePiatto: "gelato", tipopiatto: "dolce", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", listaIngredinti: listaIngr))
        ricettaLista.append(Ricetta(nomePiatto: "macedonia", tipopiatto: "frutta", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso", listaIngredinti: listaIngr))
        return WindowGroup {
            
            
            ContentView(listaRicette: ricettaLista)
        }
    }
}
