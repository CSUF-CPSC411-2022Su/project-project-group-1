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
                VStack {
                    Text("Goal Tracker")
                        .modifier(DisplayTitle())
                    TextEditor(text: $manager.goalTracker)
                        .foregroundColor(Color.gray)
                        .font(.custom("HelveticaNeue", size: 13))
                        .lineSpacing(5)
                }
            }
        }
    }
}

struct DisplayInfo: View {
    var body: some View {
        Text("The crisis of food resources to the development of homeless is a major issue in the world. Here, we demonstrate the impacts you made in helping starvation and the production of natural resources.")
            .frame(alignment: .center)
    }
}
