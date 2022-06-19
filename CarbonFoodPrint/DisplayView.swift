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
    @StateObject var display = Display()
    @State private var box = [
        ElementBox(text: "Carbon Emissions Reduced"),
        ElementBox(text: "Water Saved"),
        ElementBox(text: "Soil Quality Improved"),
        ElementBox(text: "Antibiotics Mitigated")
    ]
    
    var body: some View {
        NavigationView {
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
                    }.environmentObject(display)
                    NavigationLink(destination: InformationView(/* param */)) {
                        Text("Learn More")
                            .font(.callout)
                    }
                }.frame(height: geometry.size.height / 2)
            }
        }
    }
}

struct InformationView: View {
    var body: some View {
        Text("The crisis of food resources to the development of homeless is a major issue in the world. Here, we demonstrate the impacts you made in helping starvation and the production of natural resources.")
    }
}
