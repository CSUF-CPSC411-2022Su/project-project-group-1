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
    // The default main page
    @StateObject var manager = DisplayManager()

    var body: some View {
        TabView {
            DisplayList()
                .tabItem {
                    Image(systemName: "leaf.circle.fill")
                    Text("Contributions")
                }
            DisplayInfo()
                .tabItem {
                    Image(systemName: "info")
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
        VStack {
            Text("Your Impact on the World")
                .font(.title)
                .bold()
                .foregroundColor(.green)
            NavigationView {
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

struct DisplayInfo: View {
    var body: some View {
        Text("The crisis of food resources to the development of homeless is a major issue in the world. Here, we demonstrate the impacts you made in helping starvation and the production of natural resources.")
    }
}
