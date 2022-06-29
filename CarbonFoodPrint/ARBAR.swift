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
    @Binding var TheList: String
    //@State var TheChoice: Int
    
    var body: some View {

        NavigationView {
            VStack {
                //Text("Barcode scanner goes here")
                
                //NavigationLink(destination: ListInfo(TheList: $TheList)) {
                NavigationLink(destination: ListViewer(TheList: $TheList)) {
                    Text("Scan Bannana").bold().modifier(ButtonDesign())
                                             .font(.caption)
                                }//.padding(.bottom, 30)
                NavigationLink(destination: ListViewer(TheList: $TheList)) {
                    Text("Scan Apple").bold().modifier(ButtonDesign())
                                             .font(.caption)
                                }//.padding(.bottom, 30)
                NavigationLink(destination: ListViewer(TheList: $TheList)) {
                    Text("Scan Orange").bold().modifier(ButtonDesign())
                                             .font(.caption)
                                }//.padding(.bottom, 30)
                /*
                Button(action: {
                    print("Was clicked")
                }) {
                    Text("Scan Banana").bold()
                }.padding().modifier(ContentText())   //.border(Color.black)
                Button(action: {
                    print("Was clicked")
                }) {
                    Text("Scan Apple")
                }.padding().modifier(ContentText())   //.border(Color.black)
                */
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

struct RoundedBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(10)
    }
}

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .modifier(RoundedBackground())
            .foregroundColor(Color.white)
    }
}

