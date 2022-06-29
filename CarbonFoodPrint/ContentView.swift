//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var manager = LocationManager()
    
    var body: some View {
        TabView {
//            MainDisplayView()
//                .tabItem {
//                    Image(systemName: "plus")
//                    Text("MainMenu")
//                }
            GreenMapsMenuView()
                .tabItem {
                    Image(systemName: "car")
                    Text("GreenMaps")
                }
        }.environmentObject(manager)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
