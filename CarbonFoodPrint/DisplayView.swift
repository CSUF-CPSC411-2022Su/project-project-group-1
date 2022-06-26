//
//  display.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import Foundation
import SwiftUI

/* Note
    - the percentage values should be obtained from another source (hard-coded the values)
        - best to use make use of environment objects for the underlying shared data structure
    - this could be simply infered from the nutrition facts
*/

struct DisplayView: View {
    @StateObject var manager = DisplayManager()
    @AppStorage("formatSelection") var formatSelection: String = ""

    var body: some View {
        TabView {
            DisplayList()
                .tabItem {
                    Image(systemName: "leaf.circle.fill")
                    Text("Contributions")
                }
            DisplayGraph()
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Graph")
                }
            DisplayInfo()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
            DisplaySettings()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }.environmentObject(manager)
    }
}

struct DisplayList: View {
    @EnvironmentObject var manager: DisplayManager

    var body: some View {
        NavigationView {
            VStack {
                Text("Your Impact on the World")
                    .modifier(DisplayTitle())
                List {
                    ForEach(manager.display) { resource in
                        NavigationLink(destination: Text("\(resource.percentage)%")) {
                            HStack {
                                Text(resource.description)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct DisplayGraph: View {
    @AppStorage("formatSelection") var formatSelection: String = ""

    var body: some View {
        VStack {
            Text("Graph Summary")
                .modifier(DisplayTitle())
            // debug
            Text(formatSelection)
            // debug

            /*
            switch (formatSelection) {
                case "Table":
                    // draw table
                    Text("TODO")
                case "Coverage Map":
                    // draw map
                    Text("TODO")
                case "Pie Chart":
                    // draw chart
                    Text("TODO")
                default:
                    break
            }
            */
        }
    }
}

struct DisplayInfo: View {
    var body: some View {
        Text("The crisis of food resources to the development of homeless is a major issue in the world. Here, we demonstrate the impacts you made in helping starvation and the production of natural resources.")
            .frame(alignment: .center)
    }
}
