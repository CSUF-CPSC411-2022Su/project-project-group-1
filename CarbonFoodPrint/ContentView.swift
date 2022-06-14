//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView
        {
            //since i want to do tab view, make sure each
            //question can be seen with each swipe
            Text("First Question")
            Text("This can be second ?")
            Text("Third Question")
        }
//        Text("Hello from Weekly!!").padding()
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        DailyReport()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
