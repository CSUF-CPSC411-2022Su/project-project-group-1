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
        Form{
            Link("Search Result 1", destination: URL(string: searchResult.firstSearchResult)!)
            Link("Search Result 2", destination: URL(string: searchResult.secondSearchResult)!)
            Link("Search Result 3", destination: URL(string: searchResult.thirdSearchResult)!)
            Link("Search Result 4", destination: URL(string: searchResult.fourthSearchResult)!)
            Link("Search Result 5", destination: URL(string: searchResult.fifthSearchResult)!)
            
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

