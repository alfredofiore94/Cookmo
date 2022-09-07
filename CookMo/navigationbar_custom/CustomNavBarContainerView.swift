//
//  CustomNavBarContainerView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 07/09/22.
//

import SwiftUI



struct CustomNavBarContainerView <Content: View> : View {

    let contenuto: Content
    
    //parametri nav bar
    @State var coloreSfondo: Color
    @State var coloreTesti: Color
    @State var titolo: String
    @State var coloreTitolo: Color?
    @State var sottotitolo: String?
    @State var coloreSottotitolo: Color?
    @State var coloreBackButton: Color?
    
    //back button e next butto
    @State var showBackBtn: Bool? = true
    @State var showNextBtn: Bool? = false
    
    init(coloreSfondo: Color, coloreTesti: Color, titolo: String, coloreTitolo: Color? = nil, sottotitolo: String? = nil, coloreSottotitolo: Color? = nil, coloreBackButton: Color? = nil, @ViewBuilder contenuto: () -> Content){
        
        self.contenuto = contenuto()
        
        self._coloreSfondo = .init(initialValue: coloreSfondo)
        self._coloreTesti = .init(initialValue:coloreTesti)
        self._titolo = .init(initialValue:titolo)
        
        self._coloreTitolo = .init(initialValue: coloreTitolo)
        self._sottotitolo = .init(initialValue: sottotitolo)
        self._coloreBackButton = .init(initialValue: coloreSottotitolo)
        self._coloreBackButton = .init(initialValue: coloreBackButton)
        
       
    }
    
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarView( coloreSfondo: self.coloreSfondo, coloreTesti: self.coloreTesti, titolo: self.titolo, coloreTitolo: self.coloreTitolo, sottotitolo: self.sottotitolo, coloreSottotitolo: self.coloreSottotitolo, coloreBackButton: self.coloreBackButton)
            contenuto
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {

    static var previews: some View {

        CustomNavBarContainerView(coloreSfondo: .red, coloreTesti: .white, titolo: "Ciao a tutti", sottotitolo: "sottotitolo"){
            ZStack{
                Color.green.ignoresSafeArea()
                Text("ciao mondo")
            }
        }
    }
}
