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

class DisplayManager: ObservableObject {
    // contains the impact and the percentage with respect to their order ingredients
    @Published var display: [Resources: UInt] = [
        .Carbon: 5,
        .Water: 40,
        .Soil: 30,
        .Antibiotics: 25
    ]

    init() {}
}
