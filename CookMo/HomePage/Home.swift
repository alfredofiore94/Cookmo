//
//  Home.swift
//  CookMo
//
//  Created by Alfredo Fiore on 13/08/22.
//

import SwiftUI

struct Home: View {
    
    @State var ricetteList: [Ricetta]
    
    var body: some View {
        VStack{
            ForEach(ricetteList, id: \.self){ ricetta in
                RicettaCard(ricetta: ricetta)
            }

        }
        .frame(maxHeight: .infinity)

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        
        var ricettaLista: [Ricetta] = []
        
        ricettaLista.append(Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico"))
        ricettaLista.append(Ricetta(nomePiatto: "carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso"))
        
        return Home(ricetteList: ricettaLista)
    }
}
