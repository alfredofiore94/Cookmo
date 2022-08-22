//
//  CustomNavBarView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 22/08/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @State var coloreSfondo: Color
    @State var coloreTesti: Color
    @State var titolo: String = ""
    @State var coloreTitolo: Color?
    @State var sottotitolo: String? = ""
    @State var coloreSottotitolo: Color?
    @State var coloreBackButton: Color?
    
    
    var body: some View {
        HStack{
            backButton
            Spacer()
            textTitles
            Spacer()
            backButton
                .opacity(0.0)
        }
        .padding()
        .accentColor(.white)
        .font(.headline)
        .background(coloreSfondo)
        .foregroundColor(coloreTesti)
        
    }
}

extension CustomNavBarView {
    private var backButton: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "chevron.left")
                .foregroundColor(coloreBackButton)
        })
    }
    
    private var textTitles: some View {
        VStack{
            Text(titolo)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(coloreTitolo)
            if let sottotitolo = sottotitolo {
                Text(sottotitolo)
                .foregroundColor(coloreSottotitolo)
            }
            
        }
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavBarView(coloreSfondo: Color.blue, coloreTesti: .white, titolo: "Titolo sono", sottotitolo: "sottotilo da inserire qui")
            Spacer()
        }
    }
}
