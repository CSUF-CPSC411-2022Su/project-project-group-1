//
//  ScreenView.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI

struct ScreenView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer()
            Image(systemName: "camera.viewfinder")
                .padding()
                .frame(width: 100, height: 100, alignment: .center)
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
    
    struct ScreenView_Previews: PreviewProvider {
        static var previews: some View {
            ScreenView()
        }
    }
}
