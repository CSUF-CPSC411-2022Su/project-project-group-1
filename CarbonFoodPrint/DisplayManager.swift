//
//  DisplayManager.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/17/22.
//

import Foundation
import SwiftUI

struct Display: Identifiable {
    var id = UUID()
    var description: String
    var percentage: UInt
}

class DisplayManager: ObservableObject {
    // contains the impact and the percentage with respect to their order ingredients
    @Published var display = [Display]()
    
    init() {
        display.append(Display(description: "Carbon Emissions Reduced", percentage: 5))
        display.append(Display(description: "Water Saved", percentage: 40))
        display.append(Display(description: "Soil Quality Improved", percentage: 30))
        display.append(Display(description: "Antibiotics Mitigated", percentage: 25))
    }
}

extension CGFloat {
    init(_ display: Display) {
        self = CGFloat(display.percentage)
    }
}
