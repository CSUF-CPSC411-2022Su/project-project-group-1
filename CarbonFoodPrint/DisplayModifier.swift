//
//  DisplayModifier.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/26/22.
//

import Foundation
import SwiftUI

struct DisplayTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.green)
    }
}
