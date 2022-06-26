//
//  DisplaySettings.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/17/22.
//

import Foundation
import SwiftUI

struct DisplaySettings: View {
    @AppStorage("formatSelection") var formatSelection: String = ""
    @State private var formatOption = ["Table": "tablecells.fill", "Coverage Map": "map.fill", "Pie Chart": "chart.pie.fill"]

    var body: some View {
        VStack {
            Text("Settings")
                .modifier(DisplayTitle())
            HStack {
                Label("View Option", systemImage: formatOption[formatSelection] ?? "square")
                Picker("View Option", selection: $formatSelection) {
                    ForEach(formatOption.sorted(by: <), id: \.key) { option in
                        Text(option.key)
                    }
                }
                .pickerStyle(.menu)
            }
        }
    }
}

