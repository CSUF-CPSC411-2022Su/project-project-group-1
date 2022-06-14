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
            }.padding().border(Color.black)
            
        }
        
        VStack {
            Button(action: {
                print("Was clicked")
            }) {
                Text("SCAN MODE")
            }.padding().border(Color.black)
            Button(action: {
                print("Was clicked")
            }) {
                Text("AR MODE")
            }.padding().border(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
