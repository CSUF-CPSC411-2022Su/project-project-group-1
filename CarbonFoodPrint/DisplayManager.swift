//
//  DisplayManager.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/17/22.
//

import Foundation
import SwiftUI

enum Resources {
    case Carbon
    case Water
    case Soil
    case Antibiotics
}

class Display: ObservableObject {
    // contains the impact and the percentage with respect to their order ingredients
    @Published var factor = [Resources: UInt]()
    
    init(factor: [Resources: UInt]) {
        self.factor = factor
    }
}
