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
    
    @EnvironmentObject var manager: LocationManager
    
    @State var searchString: String = ""
    @StateObject var finder = GreenMapsFinder()
    @StateObject var history = SearchHistory()
    
    @State var message: String = ""
    @State var nonValid: Bool = false
    
    var body: some View {
        VStack {
            Text("This is the GreenMaps feature view...").padding()
            Spacer()
            HStack {
                Spacer()
                Text("Country: ")
                TextField("choose country...", text: $country)
                Spacer()
            }
            HStack {
                Spacer()
                Text("State: ")
                TextField("State", text: $state)
                Spacer()
            }
            HStack {
                Spacer()
                Text("City: ")
                TextField("City", text: $city)
                Spacer()
            }
            HStack {
                Spacer()
                Text("Zip Code: ")
                TextField("ZipCode", text: $zipCode)
                Spacer()
            }
            HStack {
                Spacer()
                Text("Preferred Range: ")
                TextField("Miles", text: $withinRange)
                Spacer()
            }
            Spacer()
            Text(message)
            
            HStack {
                Button(action: {
                    if let validRange = Int(withinRange), !country.isEmpty, !state.isEmpty, !city.isEmpty, !zipCode.isEmpty {
                        location.country = country
                        location.state = state
                        location.city = city
                        location.zipCode = zipCode
                        location.withinRange = validRange
                        manager.locations.append(location)
                        nonValid = true
                        message = ""
                        
                    } else {
                        message = "This location is not valid. Please add valid location information."
                    }
                    finder.find(location.zipCode)
                    history.addSearchString(location.zipCode)
                }){
                    if (nonValid) {
                        // NAVIGATION LINKS
                        NavigationLink(destination: GreenMapsView(location: location, finder: finder)) {
                            Text("Search!").padding()
                                .modifier(ButtonDesign())
                        }
                    } else {
                        Text("Search!").padding()
                            .modifier(ButtonDesign())
                    }
                }
            }
        }
        Spacer()
    }
}


// Actual Maps and locations of carbon footprints based on search results
struct GreenMapsView: View {
    @ObservedObject var location: CurrentLocation
    @ObservedObject var finder: GreenMapsFinder
    
    var body: some View {
        VStack {
            Text("Results for closest carbon footprints...")
            Spacer()
            
            Text("Search result")
            .font(.largeTitle)
            
            Text(finder.firstFoundName)
            .font(.body)
            
            Image(uiImage: finder.image)
            Spacer()
            
            Text("within a " + String(location.withinRange) + " mile radius")
            Spacer()
        }
    }
}
