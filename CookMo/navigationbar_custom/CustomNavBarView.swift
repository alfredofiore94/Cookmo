//
//  CustomNavBarView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 22/08/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    var coloreSfondo: Color
    var coloreTesti: Color
    var titolo: String
    var coloreTitolo: Color
    var sottotitolo: String
    var coloreSottotitolo: Color
    
    init(coloreSfondo: Color, coloreTesti: Color , titolo: String, _ coloreTitolo: Color, sottotitolo: String, _ coloreSottotitolo: Color){
        self.coloreSfondo = coloreSfondo
        self.coloreTesti = coloreTesti
        self.titolo = titolo
        self.coloreTitolo = coloreTitolo
        self.sottotitolo = sottotitolo
        self.coloreSottotitolo = coloreSottotitolo
    }
    
    var body: some View {
        HStack{
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
            })
            Spacer()
            VStack{
                Text(titolo)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(coloreTitolo)
                Text(sottotitolo)
                    .foregroundColor(coloreSottotitolo)
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
            }).opacity(0.0)
        }
        .padding()
        .accentColor(.white)
        .font(.headline)
        .background(coloreSfondo)
        .foregroundColor(coloreTesti)
        
    }
}

extension CustomNavBarView {
    
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavBarView(coloreSfondo: Color.yellow, coloreTesti: .white, titolo: "Titolo sono", .red, sottotitolo: "sottotilo da inserire qui", .green)
            Spacer()
        }
    }
}
