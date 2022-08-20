//
//  RicettaTab.swift
//  CookMo
//
//  Created by Alfredo Fiore on 19/08/22.
//

import SwiftUI

struct RicettaCard: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
            
                .stroke(ContentView.coloreMoveo, lineWidth: 5)
            HStack(alignment: .top){
                VStack (alignment: .leading){
                    Text("DOLCI")
                        .font(.system(size: 18))
                    Text("PANDORO")
                        .padding(.leading)
                        .padding(.bottom)
                        .padding(.top)
                        .font(.system(size: 30))
                   
                }
                .padding()
                Spacer()
                VStack(alignment: .leading){
                    Text("Difficile")
                    Text("48 ore")
                    Text("10,50 €")
                    
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

struct RicettaCard_Previews: PreviewProvider {
    static var previews: some View {
        RicettaCard()
    }
}
