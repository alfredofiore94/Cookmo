//
//  ContentView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 12/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Bilancia().tabItem {
                Image("bilancia_img")
                Text("Bilancia")
            }.tag(1)
            Categorie().tabItem {
                Image("categorie_img")
                Text("Categorie")
             }.tag(2)
            Home().tabItem { Label("Home", systemImage: "house.fill") }.tag(3)
            Cerca().tabItem { Label("Home", systemImage: "magnifyingglass") }.tag(4)
            
        }
        
        .background(Color(UIColor.red))
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
}


