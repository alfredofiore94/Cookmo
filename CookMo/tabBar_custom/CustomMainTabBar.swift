//
//  CustomMainTabBar.swift
//  CookMo
//
//  Created by Alfredo Fiore on 15/08/22.
//

import SwiftUI

struct CustomMainTabBar: View {
    
    let listaTabs: [CustomTabBarItem]
    
    var body: some View {
        HStack{
            
            ForEach(listaTabs, id: \.self){
                tab in tabView(tabItem: tab)
            }
        }
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
        CustomTabBarItem(nomeIcona: "Bilancia", titolo: "bilancia_img", colore: Color.red, coloreSfondo: Color.gray.opacity(0.2)),
        CustomTabBarItem(nomeIcona: "Bilancia", titolo: "bilancia_img", colore: Color.red, coloreSfondo: Color.gray.opacity(0.2)),
        CustomTabBarItem(nomeIcona: "Bilancia", titolo: "bilancia_img", colore: Color.red,  coloreSfondo: Color.gray.opacity(0.2))
    ]
    
    
    static var previews: some View {
        CustomMainTabBar(listaTabs: tabs)
    }
}

