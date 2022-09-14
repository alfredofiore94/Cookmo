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
        
        ricettaLista.append(Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico"))
        ricettaLista.append(Ricetta(nomePiatto: "carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso"))
        ricettaLista.append(Ricetta(nomePiatto: "gelato", tipopiatto: "dolce", difficolta: "facile", tempoPrep: "30 ore", costo: "economico"))
        ricettaLista.append(Ricetta(nomePiatto: "macedonia", tipopiatto: "frutta", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso"))
        return WindowGroup {
            
            
            ContentView(listaRicette: ricettaLista)
        }
    }
}
