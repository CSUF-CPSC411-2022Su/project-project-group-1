//
//  display.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import Foundation
import SwiftUI

struct DisplayView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Reduced Carbon Emissions")
                    .padding(0)
                Text("60%")
            }
            HStack {
                Text("Water Saved")
                    .padding()
                Text("30%")
            }
            HStack {
                Text("Antibiotics Prevented")
                    .padding()
                Text("10%")
            }
            HStack {
                Text("Agriculture Improvement")
                    .padding()
                Text("25%")
            }
        }
    }
}
