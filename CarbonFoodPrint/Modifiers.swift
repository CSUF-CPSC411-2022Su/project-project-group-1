//
//  Modifiers.swift
//  CarbonFoodPrint
//
//  Created by Nguyen, Randy on 6/19/22.
//

import SwiftUI
import Foundation

struct RoundedBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .modifier(RoundedBackground())
            .foregroundColor(Color.white)
    }
}
