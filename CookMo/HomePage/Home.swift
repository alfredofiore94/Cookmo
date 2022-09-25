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
        CustomNavView(){
            ScrollView{
                VStack{
                    ForEach(ricetteList){ ricetta in
                        CustomNavLink(destinazione:
                                        Dettaglioricetta(ricetta: ricetta)
                            .customNavigationTitolo(ricetta.nomePiatto)
                            .customNavigationColoreSfondo(ContentView.coloreCosmo)

                                        
                        ){
                            RicettaCard(ricetta: ricetta)
                        }
                        
                    }

                }
                .frame(maxHeight: .infinity)
            }
            .customNavigationTitolo("Cook-mo")
            .customNavigationColoreSfondo(ContentView.coloreCosmo)
            .customNavigationShowBackButton(false)
            .background(.white)

        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        
        var ricettaLista: [Ricetta] = []
        
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        
        let count = 1...10
        for _ in count { listaIngr.append(Ingrediente(nome: "farina", quantita: 23.5, uMisura: "g", isSelezionato: false))
        }
        
        ricettaLista.append(Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", listaIngredinti: listaIngr))
        ricettaLista.append(Ricetta(nomePiatto: "carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso", listaIngredinti: listaIngr))
        
        return Home(ricetteList: ricettaLista)
    }
}
