//
//  CustomMainTabBar.swift
//  CookMo
//
//  Created by Alfredo Fiore on 15/08/22.
//

import SwiftUI

struct CustomMainTabBar: View {
    
    
    
    let listaTabs: [CustomTabBarItem]
    
    //imposta il tab iniziale anche
    @Binding var tabSelezionato : CustomTabBarItem
    
    let coloreSfondo: Color
    let coloreSelezione: Color
    
    var body: some View {
        HStack{
            
            ForEach(listaTabs, id: \.self){
                tab in tabView(tabItem: tab)
                    .onTapGesture {
                        switchToTaItem(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(coloreSfondo.ignoresSafeArea(edges: .bottom))
        
    }
}

extension CustomMainTabBar {
    
    private func tabView(tabItem: CustomTabBarItem) -> some View {
        VStack(alignment: .center)  {
            Image(tabItem.nomeIcona)
                .renderingMode(.template)
            
            Text(tabItem.titolo)
                .font(.custom("SF Pro Text", size: 15))
                .multilineTextAlignment(.center)
            Spacer()
        }
        .foregroundColor(tabSelezionato == tabItem ? coloreSelezione : tabItem.colore)
        .padding(.all, 10)
        .frame( maxWidth: .infinity)
        .frame(height: 102)
        .background(tabItem.coloreSfondo)

        
    }
    
    private func switchToTaItem(tab: CustomTabBarItem){
        
        withAnimation(.easeInOut) {
            tabSelezionato = tab
        }
    }
   
    
}

struct CustomTabBarItem: Hashable{
    
    let nomeIcona: String
    let titolo: String
    let colore: Color
    let coloreSfondo: Color
}

struct CustomMainTabBar_Previews: PreviewProvider {
    
    static let tabs: [CustomTabBarItem] = [
        CustomTabBarItem(nomeIcona: "bilancia_img", titolo: "Bilancia", colore: Color.white, coloreSfondo: Color.white.opacity(0)),
        CustomTabBarItem(nomeIcona: "categorie_img", titolo: "Categorie", colore: Color.white, coloreSfondo: Color.white.opacity(0)),
        CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0)),
        CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.clear)
    ]
    
    
    static var previews: some View {
        VStack{
            Spacer()
            CustomMainTabBar(listaTabs: tabs,tabSelezionato: .constant(tabs[2]) , coloreSfondo: Color(red: 227 / 255, green: 124 / 255, blue: 81 / 255), coloreSelezione: Color.blue)
        }
        
    }
}

