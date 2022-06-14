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
            HStack{
                Text("Home")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding([.leading, .bottom])
            HStack{
                Text("Feature 1")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding([.leading, .bottom])
            HStack{
                Text("Feature 2")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding([.leading, .bottom])
            HStack{
                Text("Feature 3")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding([.leading, .bottom])
            HStack{
                Text("Feature 4")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding([.leading, .bottom])
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.705)/*@END_MENU_TOKEN@*/)
    }
}

struct HamburgerMenu_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerMenu()
    }
}
