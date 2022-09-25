//
//  Utils.swift
//  CookMo
//
//  Created by Alfredo Fiore on 25/09/22.
//

import Foundation
struct Utils {
    
    static func toStringQuantita(quantita: Float) -> String {
        return String(format: "%.2f", quantita)
    }
    
    static func formattaQuantita(quantita: Float) -> Float {
        
        let formattatore = NumberFormatter()
        formattatore.numberStyle = .decimal
        formattatore.maximumFractionDigits = 2
        
        let numerFormattato: String = formattatore.string(from: NSNumber(value: quantita)) ?? "0"
        print(Float(numerFormattato) ?? 0)
        return Float(numerFormattato)!
    }
    
}
