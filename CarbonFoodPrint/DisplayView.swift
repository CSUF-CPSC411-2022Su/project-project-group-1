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
    - this could be simply infered from the nutrition facts
 
    - format and lint
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
            DisplayInfo(/* param */)
                .tabItem {
                    Image(systemName: "info")
                    Text("About")
                }
        }.environmentObject(manager)
    }
}

struct DisplayList: View {
    @State private var box = [
        ElementBox(description: "Carbon Emissions Reduced"),
        ElementBox(description: "Water Saved"),
        ElementBox(description: "Soil Quality Improved"),
        ElementBox(description: "Antibiotics Mitigated")
    ]
    @EnvironmentObject var manager: DisplayManager

    var body: some View {
        VStack {
            Text("Your Impact on the World")
                .font(.title)
                .bold()
                .foregroundColor(.green)
            NavigationView {
                List {
                    ForEach(box) { item in
                        NavigationLink(destination: ResourceView()) {
                            VStack (alignment: .leading) {
                                Spacer()
                                Text(item.description)
                                Spacer()
                            }
                        }
                    }
                }
            }
        }

        /*
        GeometryReader { geometry in
            VStack {
                Text("Your Impact on the World")
                    .font(.title)
                    .bold()
                    .foregroundColor(.green)
                VStack(spacing: 3) {
                    ForEach(box) { element in
                        NavigationLink(destination: ResourceView()) {
                            element
                        }
                    }
                }.environmentObject(manager)
            }.frame(height: geometry.size.height / 2)
        }
        */
    }
}

struct DisplayInfo: View {
    var body: some View {
        Text("The crisis of food resources to the development of homeless is a major issue in the world. Here, we demonstrate the impacts you made in helping starvation and the production of natural resources.")
    }
}

struct ElementBox: View, Identifiable {
    var id = UUID()
    var description: String

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
                    Text(description)
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
    }
}
