//
//  ARBAR.swift
//  CarbonFoodPrint
//
//  Created by Ethan Story on 6/27/22.
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
    var body: some View {

        NavigationView {
            VStack {
                Text("Scanner goes here")
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

