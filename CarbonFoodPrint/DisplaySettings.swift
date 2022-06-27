//
//  DisplaySettings.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/17/22.
//

import Foundation
import SwiftUI

struct DisplaySettings: View {
    @AppStorage("formatSelection") var formatSelection: String = "Bar"
    @State private var formatOptions = [
        "Bar" : "chart.bar.fill",
        "Map" : "map.fill",
        "Pie" : "chart.pie.fill"
    ]

    var body: some View {
        PageStack {
            Text("Settings")
                .modifier(DisplayTitle())
            HStack {
                Label("View Option", systemImage: formatOptions[formatSelection]!)
                Picker("View Option", selection: $formatSelection) {
                    ForEach(formatOptions.sorted(by: <), id: \.key) { option in
                        Text(option.key)
                    }
                }
                .pickerStyle(.menu)
            }
        }
    }
}

