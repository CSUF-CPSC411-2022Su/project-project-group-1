//
//  display.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import Foundation
import SwiftUI

enum Impact {
    case Carbon
    case Water
    case Soil
    case Antibiotics
}

struct DisplayView: View {
    var body: some View {
        VStack(spacing: 10) {
           Text("Your Impact on the World")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.brown)
            ImpactBoxView(factor: .Carbon, percentage: 60)
            ImpactBoxView(factor: .Water, percentage: 15)
            ImpactBoxView(factor: .Soil, percentage: 20)
            ImpactBoxView(factor: .Antibiotics, percentage: 5)
        }
    }
}

struct ImpactBoxView: View {
    // Constructs Impact Boxes
    var factor: Impact
    var percentage: UInt

    init(factor: Impact, percentage: UInt) {
        self.factor = factor
        self.percentage = percentage
    }

    func impactToString() -> String {
        switch factor {
            case .Carbon: return "Carbon Emissions Reduced"
            case .Water: return "Water Saved"
            case .Soil: return "Soil Quality Improved"
            case .Antibiotics: return "Antibiotics Mitigated"
        }
    }
    
    var body: some View {
        HStack {
            Button(action: {
                print("Impact: \(percentage)")
            }) {
                Text(impactToString())
            }
        }
    }
}
