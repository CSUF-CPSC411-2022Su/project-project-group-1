//
//  ARBAR.swift
//  CarbonFoodPrint
//
//  Created by Jonathan Story on 6/27/22.
//

import Foundation
import SwiftUI


struct ARView: View {
    var body: some View {
        
        //Text("Camera goes here")
        NavigationView {
            VStack {
                Text("AR camera goes here")
                /*
                List {
                    Section(header: Text("Camera goes here")) {
                        NavigationLink(destination: Text("Name of the crosswalk")) {
                            Text("Crosswalk name")
                        }
                        NavigationLink(destination: Text("Address of the crosswalk")) {
                            Text("Crosswalk address")
                        }
                    }
                
                    
                    }
                */
                }
                Spacer()
            }
        }
    }
struct BarView: View {
    @Binding var TheVar: String
    var body: some View {

        NavigationView {
            VStack {
                Text("Barcode scanner goes here")
                
                NavigationLink(destination: VolunteerDetails(TheVar: $TheVar)) {
                                        Text("See Notices")
                                             .font(.caption)
                                }//.padding(.bottom, 30)
                /*
                List {
                    Section(header: Text("Scanner goes here")) {
                        NavigationLink(destination: Text("Name of the crosswalk")) {
                            Text("Crosswalk name")
                        }
                        NavigationLink(destination: Text("Address of the crosswalk")) {
                            Text("Crosswalk address")
                        }
                    }
                
                    
                    }
                 */
                }
                Spacer()
            }
        }
    }

