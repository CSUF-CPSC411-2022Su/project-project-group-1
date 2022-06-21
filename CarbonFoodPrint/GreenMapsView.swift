//
//  GreenMapsView.swift
//  CarbonFoodPrint
//
// Randy Nguyen
// CPSC 411-02 Summer 2022
// June 13, 2022
//
//  Created by Nguyen, Randy on 6/13/22.
//

import SwiftUI
import Foundation

// Initial Menu (button)
struct GreenMapsMenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("*** GREENMAPS FEATURE VIEW ***")
                    .font(.headline).padding(.bottom, 30)

                //MARK: - NAVIGATION LINKS Button
                NavigationLink(destination: GreenMapsSearchView()) {
                    Text("Open GreenMaps!").padding()
                        .modifier(ButtonDesign())
                }
                Spacer()
            }
        }
    }
}

// Search Menu (ask for user input)
struct GreenMapsSearchView: View {
    @StateObject var location = CurrentLocation(country: "", state: "", city: "",
                                                zipCode: "". withinRange: 0)
    @State var country: String
    @State var state: String
    @State var city: String
    @State var zipCode: String
    @State var withinRange: String
    
    var body: some View {
        VStack {
            Text("This is the GreenMaps feature view...").padding()
            Spacer()
            HStack {
                Text("Country: ")
                TextField("choose country...", text: $country)
            }
            HStack {
                Text("State: ")
                TextField("State", text: $state)
            }
            HStack {
                Text("City: ")
                TextField("City", text: $city)
            }
            HStack {
                Text("Zip Code: ")
                TextField("ZipCode", text: $zipCode)
            }
            HStack {
                Text("Preferred Range: ")
                TextField("Miles", text: $withinRange)
            }
            Spacer()
        
            if let validRange = Int(withinRange) {
                location.country = country
                location.state = state
                location.city = city
                location.zipCode = zipCode
                location.withinRange = validRange
                
                // NAVIGATION LINKS
                NavigationLink(destination: GreenMapsView()) {
                    Text("Search!").padding()
                        .modifier(ButtonDesign())
                }
            } else {
                Text("This location is not valid. Please add valid location information.")
            }
            Spacer()
        }
    }
}


// Actual Maps and locations of carbon footprints based on search results
struct GreenMapsView: View {
    var body: some View {
        Text("Results for closest carbon footprints...")
    }
}


class CurrentLocation: ObservableObject {
    @Published var country: String
    @Published var state: String
    @Published var city: String
    @Published var zipCode: String
    @Published var withinRange: Int
    
    init() {
        
    }
    
    init(country: String, state: String, city: String, zipCode: String, withinRange: Int) {
        self.country = country
        self.state = state
        self.city = city
        self.zipCode = zipCode
        self.withinRange = withinRange
    }
}
