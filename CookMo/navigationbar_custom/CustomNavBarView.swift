//
//  CustomNavBarView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 22/08/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @State var coloreSfondo: Color = Color.cyan
    @State var coloreTesti: Color = Color.red
    @State var titolo: String = "Titolo"
    @State var coloreTitolo: Color?
    @State var sottotitolo: String?
    @State var coloreSottotitolo: Color?
    @State var coloreBackButton: Color?
    
    //back button e next butto
    @State var showBackBtn: Bool? = true
    @State var showNextBtn: Bool? = false
    
    
    var body: some View {
        HStack{
            if showBackBtn != nil && showBackBtn == true {
                backButton
            }
            Spacer()
            textTitles
            
            Spacer()
            if showNextBtn != nil && showNextBtn == true {
                nextButton
            }
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
        var coloreBkBtn = coloreTesti
        if let coloreBackButton = coloreBackButton {
            coloreBkBtn = coloreBackButton
        }
        
        return Button(action: {
            
        }, label: {
            
            Image(systemName: "chevron.left")
            
            .foregroundColor(coloreBkBtn)
        })
    }
    
    private var nextButton: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "chevron.right")
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
            CustomNavBarView()
            Spacer()
        }
    }
}
