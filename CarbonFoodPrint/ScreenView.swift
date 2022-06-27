//
//  ScreenView.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/27/22.
//

import SwiftUI

struct ScreenView: View{
    @EnvironmentObject var query: AlternativeFinder
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(systemName: "camera.viewfinder")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
            TextField("Search Alternatives", text:$query.searchQuery)
                .frame(width: 200, height: 40, alignment: .center)
                .border(.black)
                .multilineTextAlignment(.center)
            Spacer()
            NavigationLink(destination: EnvObj(), label:{
                Text("Find Alternatives")
                    .frame(width: 200, height: 40, alignment: .center)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            } )
            Spacer()
        }
    }
}
