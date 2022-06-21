//
//  HamburgerMenu.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/13/22.
//

import SwiftUI

struct HamburgerMenu: View {
    
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink(destination: NavMenu(), label: {
                Text("Home")
                    .padding([.top, .leading, .bottom])
                    .foregroundColor(.white)
                    .font(.headline)
            })
            NavigationLink(destination: NavMenu(), label: {
                Text("Feature 1")
                    .padding([.leading,.bottom])
                    .foregroundColor(.white)
                    .font(.headline)
            })
            NavigationLink(destination: NavMenu(), label: {
                Text("Feature 2")
                    .padding([.leading,.bottom])
                    .foregroundColor(.white)
                    .font(.headline)
            })
            NavigationLink(destination: ContentView(), label: {
                Text("Alternatives")
                    .padding([.leading,.bottom])
                    .foregroundColor(.white)
                    .font(.headline)
            })
            NavigationLink(destination: NavMenu(), label: {
                Text("Feature 4")
                    .padding([.leading,.bottom])
                    .foregroundColor(.white)
                    .font(.headline)
            })
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.705)/*@END_MENU_TOKEN@*/)
        .accentColor(Color(red: 180, green: 180, blue: 180, opacity: 1.0))
    }
}

struct HamburgerMenu_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerMenu()
    }
}
