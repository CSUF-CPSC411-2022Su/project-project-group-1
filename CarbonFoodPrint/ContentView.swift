//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            
            
            
            
            BarcodeFeature()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Barcode Scanner ")
                }.padding(.bottom, 30)
                
        }
    
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








