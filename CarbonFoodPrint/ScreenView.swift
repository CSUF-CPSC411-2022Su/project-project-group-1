//
//  ScreenView.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/27/22.
//

import SwiftUI

struct ScreenView: View{
    @StateObject var query: AlternativeFinder = AlternativeFinder()
    @StateObject var history = SearchHistory()
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            TextField("Search Alternatives", text:$query.searchQuery)
                .frame(width: 200, height: 40, alignment: .center)
                .border(.black)
                .multilineTextAlignment(.center)
            Spacer()
            Text("Recent Searches")
                .font(.largeTitle)
            List(history.searchList, id: \.self){
                storeSearch in
                Button(action:{
                    query.searchQuery = storeSearch
                    history.addSearchList(query.searchQuery)
                }){
                    Text(storeSearch)
                }
            }
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
