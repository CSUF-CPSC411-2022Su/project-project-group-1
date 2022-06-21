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
        NavigationView {
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
            
            NavigationLink(destination: VolunteerDetails()) {
                                    Text("See Notices")
                                         .font(.caption)
                            }//.padding(.bottom, 30)
        }
    }
    }
        
}


/*
struct Information: View {
    @Binding var name: String
    @Binding var address: String
    @Binding var age: String
    var body: some View {
        //Text(name).padding()
        //Text(address).padding()
        //Text(age).padding()
    }
}
 */

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

struct VolunteerDetails: View {
    // TODO: (Model 4) Insert Environment object here
    var body: some View {
        VStack {
            Text("I'm sorry to say that the buttons don't actually do anything at the moment.")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("However rest assured they will eventually do something")
                Text("").bold()
            }
            HStack {
                //Text("Ages 18 - 50:")
                //Text("6 hours").bold()
            }

            HStack {
                //Text("Ages 51 - 60:")
                //Text("3 hours").bold()
            }.padding(.bottom, 30)
            HStack {
                //Text("*People below 13 and over 60 are not eligible to volunteer.")
                    //.font(.caption)
            }
            Spacer()
            // TODO: (Model 4) Insert Text view here
        }
    }
}
