//
//  Env OBj==bj.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI


struct EnvObj: View {
    @EnvironmentObject var searchResult: AlternativeFinder 
    var body: some View {
        NavigationView{
            List{
                Section(
                    header: Text("Search Results")){
                        Text(searchResult.firstSearchResult)
                        Text(searchResult.secondSearchResult)
                    }
                
            }
        }
    }
}


struct NavScreen:View{
    
    let selectedresult: String
    
    var body: some View{
        ZStack{
            Color.white.ignoresSafeArea()
            Text(selectedresult)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)
                .cornerRadius(30)
                .background(Color.black)
        }
    }
}


struct EnvObj_Preview: PreviewProvider {
    static var previews: some View {
        EnvObj()
    }
}

