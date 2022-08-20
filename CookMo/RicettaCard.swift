//
//  RicettaTab.swift
//  CookMo
//
//  Created by Alfredo Fiore on 19/08/22.
//

import SwiftUI

struct RicettaCard: View {
    
    var nomePiatto: String
    var tipoPiatto: String
    var difficolta: String
    var tempoPrep: String
    var costo : String
    
    
    init(nomePiatto: String, tipoPiatto: String, difficolta: String, tempoPrep: String, costo : String){
        
        self.nomePiatto = nomePiatto
        self.tipoPiatto = tipoPiatto
        self.difficolta = difficolta
        self.tempoPrep = tempoPrep
        self.costo = costo
        
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
            
                .stroke(ContentView.coloreMoveo, lineWidth: 5)
            HStack(alignment: .top){
                VStack (alignment: .leading){
                    Text(self.tipoPiatto)
                        .font(.system(size: 18))
                    Text(self.nomePiatto)
                        .padding(.leading)
                        .padding(.bottom)
                        .padding(.top)
                        .font(.system(size: 30))
                   
                }
                .padding()
                Spacer()
                VStack(alignment: .leading){

                    InfoRicetta(self.difficolta, "chef_img")
                    InfoRicetta(self.tempoPrep, "timer_img")
                    InfoRicetta(self.costo, "coin_img")

                    
                }
                .font(.system(size: 12))
                .padding(.trailing, 70)
                .padding(.top, 40)
                
            }
            
        }
        
        .frame(width: .infinity, height: 150)
        .padding(20)
        .foregroundColor(ContentView.coloreMoveo)
        .font(.custom("SF Pro Text", size: 15))
    }
}

struct InfoRicetta: View {
    
    var nome: String
    var immagine: String

    init(_ nome: String, _ immagine: String) {
        self.nome = nome
        self.immagine = immagine

    }

    var body: some View {
        HStack{
            Image(immagine)
                .renderingMode(.template)
            Text(nome)
        }
        
    }
}

struct RicettaCard_Previews: PreviewProvider {
    static var previews: some View {
        RicettaCard(nomePiatto: "Pandoro", tipoPiatto: "Dolce", difficolta: "Media", tempoPrep: "48 ore", costo: "16,50€")
    }
}
