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
    @Published var info: [Resources: UInt] = [
        .Carbon: 5,
        .Water: 40,
        .Soil: 30,
        .Antibiotics: 25
    ]

    init() {

    }
}

struct ElementBox: View, Identifiable {
    var id = UUID()
    var text: String

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .opacity(0.3)
                    .cornerRadius(4)
                    .frame(width: geometry.size.width * 6 / 7)
                HStack {
                    Spacer()
                    Text(text)
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
    }
}
