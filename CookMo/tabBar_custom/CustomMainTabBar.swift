//
//  CustomMainTabBar.swift
//  CookMo
//
//  Created by Alfredo Fiore on 15/08/22.
//

import SwiftUI

struct CustomMainTabBar: View {
    
    let listaTabs: [CustomTabBarItem]
    let coloreSfondo: Color
    
    var body: some View {
        HStack{
            
            ForEach(listaTabs, id: \.self){
                tab in tabView(tabItem: tab)
            }
        }
        .background(coloreSfondo)
    }
}

extension CustomMainTabBar {
    
    private func tabView(tabItem: CustomTabBarItem) -> some View {
        VStack{
            Image(tabItem.nomeIcona)
                .renderingMode(.template)
            Text(tabItem.titolo)
        }
        .foregroundColor(tabItem.colore)
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity)
        .background(tabItem.coloreSfondo)
        
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
        CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.white.opacity(0))
    ]
    
    
    static var previews: some View {
        CustomMainTabBar(listaTabs: tabs, coloreSfondo: Color(red: 227 / 255, green: 124 / 255, blue: 81 / 255))
    }
}

