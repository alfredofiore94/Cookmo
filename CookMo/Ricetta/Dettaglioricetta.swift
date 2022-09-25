//
//  Dettaglioricetta.swift
//  CookMo
//
//  Created by Alfredo Fiore on 14/09/22.
//

import SwiftUI

struct Dettaglioricetta: View {

    
    @State var ricetta: Ricetta
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Ingredienti")
                        .font(.system(size: 40))
                        .padding()
                    Spacer()
                    Button(action: {

                    }, label: {
                        Image("edit_img")
                            .renderingMode(.template)
                            .padding()
                        }
                    )
                    
                }
                ListaIngredienti
                    
            }
            .background(.white)
            .foregroundColor(ContentView.coloreMoveo)
        }
    }
}

extension Dettaglioricetta {
    private var ListaIngredienti: some View {
        
        Group {
            ForEach(ricetta.listaIngredienti) { ingr in
                HStack{
                    HStack{
                        Text(ingr.nome)
                            
                    }
                    .frame(width: 200)
                    Spacer()
                    Text(Utils.toStringQuantita(quantita: ingr.quantita))
                    Text(ingr.uMisura)
                    Spacer()
                }
                .padding(.top, 5)
                .padding(.leading, 50)
                
            }
        }
    }
}



struct Dettaglioricetta_Previews: PreviewProvider {
    static var previews: some View {
        
        var listaIngr: [Ingrediente] = [Ingrediente(nome: "zucchero", quantita: 23.5, uMisura: "g", isSelezionato: false)]
        
        let count = 1...100
        for i in count { listaIngr.append(Ingrediente(nome: "farina \(i)", quantita: 23.5 * Float(i), uMisura: "g", isSelezionato: false))
        }
        let ricetta = Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico", listaIngredinti: listaIngr)
        
        return Dettaglioricetta(ricetta: ricetta)
    }
}
