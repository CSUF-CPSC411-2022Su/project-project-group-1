//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Text("Hello, world!")
            //.padding()
        
        
        HStack {
            Button(action: {
            print("Was clicked")
            }) {
            Text("MENU")
            }.padding()
        }
        
        VStack {
            Button(action: {
                print("Was clicked")
            }) {
                Text("SCAN MODE")
            }.padding()
            Button(action: {
                print("Was clicked")
            }) {
                Text("AR MODE")
            }.padding()
            Text("Screen - Feature")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
