//
//  CustomTabBarItemsPreferenceKey.swift
//  CookMo
//
//  Created by Alfredo Fiore on 17/08/22.
//

import Foundation
import SwiftUI

struct CustomTabBarItemsPreferenceKey: PreferenceKey{
    
    static var defaultValue: [CustomTabBarItem] = []
    
    static func reduce(value: inout [CustomTabBarItem], nextValue: () -> [CustomTabBarItem]) {
        value += nextValue()
    }
}

struct CustomTabBarViewModifier: ViewModifier{
    
    let customTab: CustomTabBarItem
    
    @Binding var tabSelezionato: CustomTabBarItem
    
    func body(content: Content) -> some View {
        content
            .opacity(tabSelezionato == customTab ? 1.0 : 0.0)
            .preference(key: CustomTabBarItemsPreferenceKey.self, value: [customTab])
    }
}

extension View{
    func customTabBarItem(tab: CustomTabBarItem, tabSelect: Binding<CustomTabBarItem>) -> some View{
        modifier(CustomTabBarViewModifier(customTab: tab, tabSelezionato: tabSelect))
    }
}
