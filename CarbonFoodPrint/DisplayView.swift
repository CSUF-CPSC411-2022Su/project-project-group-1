//
//  display.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import Foundation
import SwiftUI

struct ElementBox: View {
    var text: String

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .modifier(RectBox())
                    .frame(width: geometry.size.width * 2 / 3)
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

struct DisplayView: View {
    @StateObject var info = Display(factor: [
        .Carbon: 5,
        .Water: 40,
        .Soil: 30,
        .Antibiotics: 25
    ])

    // @State var percentage: [UInt] = [5, 40, 30, 25]

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack{
                   Text("Your Impact on the World")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                    VStack {
                        NavigationLink(destination: ResourceView(/* param */)) {
                            ElementBox(text: "Carbon Emissions Reduced")
                        }
                        NavigationLink(destination: ResourceView(/* param */)) {
                            ElementBox(text: "Water Saved")
                        }
                        NavigationLink(destination: ResourceView(/* param */)) {
                            ElementBox(text: "Soil Quality Improved")
                        }
                        NavigationLink(destination: ResourceView(/* param */)) {
                            ElementBox(text: "Antibiotics Mitigated")
                        }
                    }
                }.frame(height: geometry.size.height / 3)
            }
        }
    }
}

struct ResourceView: View {
    var body: some View {
        Text("TODO")
    }
}
