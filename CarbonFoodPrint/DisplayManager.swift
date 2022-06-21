//
//  DisplayManager.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/17/22.
//

import Foundation
import SwiftUI

class DisplayManager: ObservableObject {
    // contains the impact and the percentage with respect to their order ingredients
    @Published var display: [Display] = [
        Display(description: "Carbon Emissions Reduced", percentage: 5),
        Display(description:"Water Saved", percentage: 40),
        Display(description:"Soil Quality Improved", percentage: 30),
        Display(description:"Antibiotics Mitigated", percentage: 25),
    ]
    
    init() {}
}

struct Display: Identifiable {
    var id = UUID()
    var description: String
    var percentage: UInt
}
