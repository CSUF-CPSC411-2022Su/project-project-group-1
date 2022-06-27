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
        
        let slide_close = DragGesture()
            .onEnded {
                if $0.translation.width < -100{
                    withAnimation{
                        self.openMenu = false
                    }
                }
            }
        
        
        return NavigationView{
            GeometryReader { geometry in
                ZStack(alignment: .leading){
                    
                    ScreenView()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    if self.openMenu{
                        HamburgerMenu()
                            .frame(width: geometry.size.width*2/3)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(slide_close)
            }
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.openMenu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
