//
//  Dettaglioricetta.swift
//  CookMo
//
//  Created by Alfredo Fiore on 14/09/22.
//

import SwiftUI

struct Dettaglioricetta: View {

    @State var editIngr: Bool = false
    @State private var contentSize: CGSize = .zero
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Ingredienti")
                        .font(.system(size: 30))
                        .padding()
                    Spacer()
                    Button(action: {
                        self.editIngr = !self.editIngr
                    }, label: {
                        Image("edit_img")
                            .renderingMode(.template)
                            .padding()

                        }
                    )
                    
                }
                ListaIngredienti()
                    
            }
            .background(.white)
            .foregroundColor(ContentView.coloreMoveo)
        }
    }
}



struct ListaIngredienti: View {
    var body: some View {
        Group {
            ForEach(0 ..< 10) { i in
                HStack{
                    Text("Item: \(i)")
                    Spacer()
                }
                .padding(.top, 5)
                .padding(.leading, 50)
                
            }
        }
    }
}

struct Dettaglioricetta_Previews: PreviewProvider {
    static var previews: some View {
        Dettaglioricetta()
    }
}
