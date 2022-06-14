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
    @State var onClick = false
    var body: some View {
        NavigationView {
            VStack {
                Text("*** GREENMAPS FEATURE VIEW ***").padding()
                Button(action: {
                    print("*** Opening GreenMaps... ***")
                    DispatchQueue.main.asyncAfter(deadline: .now()) {
                        self.onClick = true
                    }
                }) {
                    Text("Open GreenMaps!").padding()
                }

                //MARK: - NAVIGATION LINKS
                NavigationLink(destination: GreenMapsSearchView(), isActive: $onClick) {
                    EmptyView()
                }
            }
        }
    }
}

// Search Menu (ask for user input)
struct GreenMapsSearchView: View {
    @State var country: String = ""
    @State var city: String = ""
    @State var state: String = ""
    @State var zipCode: String = ""
    @State var withinRange: String = ""

    @State var onClick = false
    
    var body: some View {
        Text("This is the GreenMaps feature view...").padding()
        VStack{
            HStack{
                Text("Country: ")
                TextField("choose country...", text: $country)
            }
            HStack{
                Text("City: ")
                TextField("City", text: $city)
            }
            HStack{
                Text("State: ")
                TextField("State", text: $state)
            }
            HStack{
                Text("Zip Code: ")
                TextField("ZipCode", text: $zipCode)
            }
            HStack{
                Text("Preferred Range: ")
                TextField("Miles", text: $withinRange)
            }
            Button(action: {
                print("Opening GreenMaps of Business...")
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    self.onClick = true
                }
            }) {
                Text("Search!").padding()
            }
            
            //MARK: - NAVIGATION LINKS
            NavigationLink(destination: GreenMapsView(), isActive: $onClick) {
                EmptyView()
            }
        }
    }
}


// Actual Maps and locations of carbon footprints based on search results
struct GreenMapsView: View {
    var body: some View {
        Text("Results for closest carbon footprints...")
    }
}
