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
            //Text("TEST")
                //.modifier(ContentText())
            
            Button(action: {
            print("Was clicked")
            }) {
            Text("MENU")
            }.padding().modifier(ContentText())  //.border(Color.black)
            
        }
        
        VStack {
            Button(action: {
                print("Was clicked")
            }) {
                Text("SCAN MODE").bold()
            }.padding().modifier(ContentText())   //.border(Color.black)
            Button(action: {
                print("Was clicked")
            }) {
                Text("AR MODE")
            }.padding().modifier(ContentText())   //.border(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 30))
           .foregroundColor(Color.white)
           .padding()
                      .background(Color.black)
                      .cornerRadius(10)
               }
           }
