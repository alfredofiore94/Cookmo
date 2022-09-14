//
//  CustomMainTabBarContainer.swift
//  CookMo
//
//  Created by Alfredo Fiore on 16/08/22.
//

import SwiftUI

struct CustomMainTabBarContainer<Content:View>: View {
    
    @Binding var tabSelezionato: CustomTabBarItem
    let contenuto: Content
    
    @State private var tabs: [CustomTabBarItem] = []
    var coloreSfondo: Color
    var coloreSelezione: Color 
    
    init(tabSelezionato: Binding<CustomTabBarItem>, coloreSfondo: Color, coloreSelezione: Color, @ViewBuilder contenuto: () -> Content){
        self._tabSelezionato = tabSelezionato
        self.contenuto = contenuto()
        self.coloreSfondo = coloreSfondo
        self.coloreSelezione = coloreSelezione
    }

    
    var body: some View {
        VStack (spacing: 0){
            ZStack{
                contenuto
            }
            

            CustomMainTabBar(listaTabs: tabs, tabSelezionato: $tabSelezionato, coloreSfondo: coloreSfondo, coloreSelezione: coloreSelezione)

        }
        
        .onPreferenceChange(CustomTabBarItemsPreferenceKey.self, perform: { value in self.tabs = value })
        
    }
}

struct CustomMainTabBarContainer_Previews: PreviewProvider {
    
    let coloreSfondo: Color = Color(red: 227 / 255, green: 124 / 255, blue: 81 / 255)
    let coloreSelezione: Color = Color.blue
    
    static let tabs: [CustomTabBarItem] = [
        CustomTabBarItem(nomeIcona: "bilancia_img", titolo: "Bilancia", colore: Color.white, coloreSfondo: Color.white.opacity(0)),
        CustomTabBarItem(nomeIcona: "categorie_img", titolo: "Categorie", colore: Color.white, coloreSfondo: Color.white.opacity(0)),
        CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0)),
        CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.clear)
    ]
    
    static var previews: some View {
        CustomMainTabBarContainer(tabSelezionato: .constant(tabs[2]), coloreSfondo: ContentView.coloreCosmo, coloreSelezione:  ContentView.coloreMoveo){
            Color.blue
        }
    }
}
