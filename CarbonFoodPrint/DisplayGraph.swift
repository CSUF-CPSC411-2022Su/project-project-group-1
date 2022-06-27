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

    var body: some View {
        PageStack {
            Text("Data Visualization")
                .modifier(DisplayTitle())

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
                ForEach(manager.display) { element in
                    ZStack {
                        VStack {
                            Rectangle()
                                .fill(Color("BabyBlue"))
                                .frame(width: geometry.size.width / CGFloat(manager.display.count) - 50,
                                       height: CGFloat(element.percentage) * offset)
                            Text(element.description)
                                .font(.footnote)
                        }
                        Text("\(element.percentage)%")
                            .font(.footnote)
                            .frame(height: CGFloat(element.percentage) * offset)
                    }
                }
            }
        }
    }
}

struct DisplayMap: View {
    var body: some View {
        Text("TODO")
    }
}

struct DisplayPie: View {
    var body: some View {
        Text("TODO")
    }
}
