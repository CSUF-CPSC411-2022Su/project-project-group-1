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
            print("Secret message")
            }) {
            Text("MENU")
            }.padding()
        }
        
        VStack {
            Button(action: {
                print("Secret message")
            }) {
                Text("SCAN MODE")
            }.padding()
            Button(action: {
                print("Secret message")
            }) {
                Text("AR MODE")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
