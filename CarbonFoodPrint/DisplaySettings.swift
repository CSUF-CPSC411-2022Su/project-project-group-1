//
//  DisplaySettings.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/17/22.
//

import Foundation
import SwiftUI

struct Empty: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 30))
    }
}
