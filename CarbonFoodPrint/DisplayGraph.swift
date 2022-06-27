//
//  DisplayGraph.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/26/22.
//

import Foundation
import SwiftUI

struct DisplayGraph: View {
    @AppStorage("formatSelection") var formatSelection: String = ""
    @State private var formatOptions = [
        "Bar": "chart.bar.fill",
        "Map": "map.fill",
        "Pie": "chart.pie.fill"
    ]

    var body: some View {
        PageStack {
            Text("Data Visualization")
                .modifier(DisplayTitle())
            HStack {
                Label("View Option", systemImage: formatOptions[formatSelection] ?? "questionmark.app.fill")
                Picker("View Option", selection: $formatSelection) {
                    ForEach(formatOptions.sorted(by: <), id: \.key) { key, _ in
                        Text(key)
                    }
                }
                .pickerStyle(.menu)
            }
            .padding()
            switch (formatSelection) {
                case "Bar":
                    DisplayBar()
                case "Map":
                    DisplayMap()
                case "Pie":
                    DisplayPie()
                default:
                    Text("Empty")
            }
        }
    }
}

struct DisplayBar: View {
    @EnvironmentObject var manager: DisplayManager
    let offset: CGFloat = 10

    var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .bottom) {
                ForEach(manager.display) { resource in
                    ZStack {
                        VStack {
                            Rectangle()
                                .fill(Color("BabyBlue"))
                                .frame(width: geometry.size.width / CGFloat(manager.display.count) - 50,
                                       height: CGFloat(resource.percentage) * offset)
                                .shadow(radius: 3)
                            Text(resource.description.components(separatedBy: " ")[0])
                                .font(.footnote)
                            Text("\(resource.percentage)%")
                                .font(.footnote)
                        }
                    }
                }
            }.frame(width: geometry.size.width)
        }
    }
}

struct DisplayMap: View {
    @EnvironmentObject var manager: DisplayManager

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // https://stackoverflow.com/questions/65248710/swiftui-how-to-make-a-vertical-dotted-line-using-shape
                DashedLine()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(width: 1, height: geometry.size.height)
                    .foregroundColor(.gray)
                DashedLine()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(width: geometry.size.width, height: geometry.size.height / 2)
                    .foregroundColor(.gray)
                    .rotationEffect(.degrees(-37))
                CoverageMap(bound: manager.display.map { CGFloat($0) })
                    .fill(Color("BabyBlue").opacity(0.5))
            }
        }
    }
}

struct DisplayPie: View {
    var body: some View {
        Text("pie todo")
    }
}

