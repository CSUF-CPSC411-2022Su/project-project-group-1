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
 
 - do not forget to format and lint
 - update personal wiki after finish
*/

struct DisplayView: View {
    // The default main page
    @StateObject var info = Display(info: [
        .Carbon: 5,
        .Water: 40,
        .Soil: 30,
        .Antibiotics: 25
    ])

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                   Text("Your Impact on the World")
                        .font(.title)
                        .bold()
                        .foregroundColor(.green)
                    VStack(spacing: 3) {
                        NavigationLink(destination: ResourceView()) {
                            ElementBox(text: "Carbon Emissions Reduced")
                        }
                        NavigationLink(destination: ResourceView()) {
                            ElementBox(text: "Water Saved")
                        }
                        NavigationLink(destination: ResourceView()) {
                            ElementBox(text: "Soil Quality Improved")
                        }
                        NavigationLink(destination: ResourceView()) {
                            ElementBox(text: "Antibiotics Mitigated")
                        }
                    }.environmentObject(info)
                    NavigationLink(destination: InformationView(/* param */)) {
                        Text("Learn More")
                            .font(.callout)
                    }
                }.frame(height: geometry.size.height / 2)
            }
        }
    }
}

struct ElementBox: View {
    var text: String

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
                    Text(text)
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
    }
}

struct InformationView: View {
    var body: some View {
        Text("The crisis of food resources to the development of homeless is a major issue in the world. Here, we demonstrate the impacts you made in helping starvation and the production of natural resources.")
    }
}
