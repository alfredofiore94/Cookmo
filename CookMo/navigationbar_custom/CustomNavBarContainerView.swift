//
//  CustomNavBarContainerView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 07/09/22.
//

import SwiftUI



struct CustomNavBarContainerView <Content: View> : View {

    let contenuto: Content
    
    
    init(@ViewBuilder contenuto: () -> Content){
        
        self.contenuto = contenuto()
       
    }
    
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarView()
            contenuto
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {

    static var previews: some View {

        CustomNavBarContainerView{
            ZStack{
                Color.green.ignoresSafeArea()
                Text("ciao mondo")
            }
        }
    }
}
