//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var openMenu = false
    
    var body: some View{
        GeometryReader { geometry in
            ZStack(alignment: .leading){
                HamburgerButton(openMenu: self.$openMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.openMenu ? 2*(geometry.size.width)/3 : 0)
                    .disabled(self.openMenu ? true:false)
                ScreenView()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                if self.openMenu{
                    HamburgerMenu()
                        .frame(width: geometry.size.width*2/3)
                        .transition(.move(edge: .leading))
                }
            }
        }
    }
}

struct HamburgerButton : View{
    
    @Binding var openMenu: Bool
    
    var body: some View{
        Button(action: {
            withAnimation{
                self.openMenu = true}
        }, label: {
            Text("Menu")
                .padding()
                .foregroundColor(.gray)
        })
    }
}

struct ScreenView: View{
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("Product Searched Image Insert")
                .padding()
                .background(Color(hue: 1.0, saturation: 0.435, brightness: 0.971))
            Button(action: {
                print("Check for Alternatives Action")
            }, label: {
                Text("Check Alternatives").foregroundColor(Color.white)
                    .background(Color(hue: 1.0, saturation: 0.077, brightness: 0.8)).padding()
            })
            Spacer()
            Text("Display Alternatives Here")
            Spacer()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
