//
//  ProductInfoDisplays.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/28/22.
//

import Foundation
import SwiftUI


struct BananaViewer: View {
    //@Binding var TheList: String
    var body: some View {
        VStack {
            Text("Information for Banana")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common banana produces 114.08 million metric tons of waste due to waste-loss.")
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct AppleViewer: View {
    //@Binding var TheList: String
    var body: some View {
        VStack {
            Text("Information for Apple")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common apple produces 114.08 million metric tons of waste due to waste-loss.")
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct OrangeViewer: View {
    //@Binding var TheList: String
    var body: some View {
        VStack {
            Text("Information for Orange")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common Orange produces 114.08 million metric tons of waste due to waste-loss.")
                
                Spacer()
            }
            Spacer()
        }
    }
}
