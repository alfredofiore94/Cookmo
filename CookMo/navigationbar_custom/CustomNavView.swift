//
//  CustomNavView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 07/09/22.
//

import SwiftUI

struct CustomNavView <Content:View> : View {
    
    let contenuto: Content
    
    init(@ViewBuilder contenuto: () -> Content){
        self.contenuto = contenuto()
        
    }
    
    var body: some View {
        NavigationView {
            CustomNavBarContainerView(){
                
                contenuto
            }
            .navigationBarHidden(true)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomNavView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView(){
            Color.blue.ignoresSafeArea()
        }
    }
}

