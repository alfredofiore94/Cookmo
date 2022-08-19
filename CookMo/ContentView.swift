//
//  ContentView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 12/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: String = "home"
    
    @State private var tabSelezionato: CustomTabBarItem = CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0))
    
    var body: some View {
        CustomMainTabBarContainer(tabSelezionato: $tabSelezionato){
            
            Bilancia()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "bilancia_img", titolo: "Bilancia", colore: Color.white, coloreSfondo: Color.white.opacity(0)), tabSelect: $tabSelezionato)
            Categorie()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "categorie_img", titolo: "Categorie", colore: Color.white, coloreSfondo: Color.white.opacity(0)), tabSelect: $tabSelezionato)
            Home()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0)), tabSelect: $tabSelezionato)
            
            Cerca()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.clear), tabSelect: $tabSelezionato)
            ListaSpesa()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "lista_img", titolo: "Lista Spesa", colore: Color.white,  coloreSfondo: Color.white.opacity(0)), tabSelect: $tabSelezionato)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
        
    }
}

 


