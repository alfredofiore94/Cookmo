//
//  RicettaTab.swift
//  CookMo
//
//  Created by Alfredo Fiore on 19/08/22.
//

import SwiftUI

struct RicettaCard: View {
    
    @State var ricetta: Ricetta
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                
                .stroke(ContentView.coloreMoveo, lineWidth: 5)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            HStack(alignment: .top){
                VStack (alignment: .leading){
                    Text(self.ricetta.tipoPiatto)
                        .font(.system(size: 18))
                    Text(self.ricetta.nomePiatto)
                        .padding(.leading)
                        .padding(.bottom)
                        .padding(.top)
                        .font(.system(size: 30))
                   
                }
                .padding()
                Spacer()
                VStack(alignment: .leading){

                    InfoRicetta(self.ricetta.difficolta, "chef_img")
                    InfoRicetta(self.ricetta.tempoPrep, "timer_img")
                    InfoRicetta(self.ricetta.costo, "coin_img")

                    
                }
                .font(.system(size: 12))
                .padding(.trailing, 50)
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
        
        let ricettaTmp = Ricetta(nomePiatto: "Pandoro", tipopiatto: "Dolce", difficolta: "Media", tempoPrep: "48 ore", costo: "16,50€")
        
        ZStack{
            Color.cyan.ignoresSafeArea()
            RicettaCard(ricetta: ricettaTmp)

        }
        
    }
}
