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
    @StateObject var location = CurrentLocation()
    @State var country: String = ""
    @State var state: String = ""
    @State var city: String = ""
    @State var zipCode: String = ""
    @State var withinRange: String = ""
    
    @State var message: String = ""
    @State var nonValid: Bool = false
    
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
            Text(message)
            
            HStack {
                Button(action: {
                    if let validRange = Int(withinRange), !country.isEmpty, !state.isEmpty,
                                            !city.isEmpty, !zipCode.isEmpty {
                        location.country = country
                        location.state = state
                        location.city = city
                        location.zipCode = zipCode
                        location.withinRange = validRange
                        nonValid = true
                        
                    } else {
                        message = "This location is not valid. Please add valid location information."
                    }
                }){
                    if (!nonValid) {
                        // NAVIGATION LINKS
                        NavigationLink(destination: GreenMapsView()) {
                            Text("Search!").padding()
                                .modifier(ButtonDesign())
                        }
                    } else {
                        Text(message).padding()
                        Text("Search!").padding()
                            .modifier(ButtonDesign())
                    }
                }
            }
        }.environmentObject(location)
    }
}


// Actual Maps and locations of carbon footprints based on search results
struct GreenMapsView: View {
    @EnvironmentObject var location: CurrentLocation
    
    var body: some View {
        VStack {
            Text("Results for closest carbon footprints...")
            Spacer()
            
            Text(location.validPrint)
        }
    }
}
