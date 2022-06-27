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
        CoverageMap(
            top: CGFloat(manager.display[0]),
            right: CGFloat(manager.display[1]),
            bottom: CGFloat(manager.display[2]),
            left: CGFloat(manager.display[3])
        )

            .fill(Color("BabyBlue").opacity(0.2))
    }
}

struct DisplayPie: View {
    var body: some View {
        Text("pie todo")
    }
}

struct CoverageMap: Shape {
    let top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.maxX / 2, y: top * 50))

        path.addLine(to: CGPoint(x: rect.maxX - (rect.maxX / 200 * right), y: rect.maxY / 2))
        path.addLine(to: CGPoint(x: rect.maxX / 2, y: rect.maxY - (rect.maxY / 200 * bottom)))
        path.addLine(to: CGPoint(x: right, y: rect.maxY / 2))
        path.move(to: CGPoint(x: rect.maxX / 2, y: top * 50))

        return path
    }
}
