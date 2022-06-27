//
//  SearchResults.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/27/22.
//

import SwiftUI
import Foundation

struct SearchAPIResults: Codable{
    var organic_results: [Organic_Reults]
}

struct Organic_Reults: Codable{
    var position: Int
    var title: String
    var link: String
    var snippet: String
}

class AlternativeFinder: ObservableObject{
    @Published var searchQuery: String = ""
    @Published var firstSearchResult = ""
    @Published var secondSearchResult = ""
    @Published var thirdSearchResult = ""
    @Published var fourthSearchResult = ""
    @Published var fifthSearchResult = ""   
    
    
    private var accessKey = "16806e0764bd161a885bc6b394b00a6792787530b4c3af860792080ef73a3489"
    
    func find(_ searchQuery: String){
        guard searchQuery != "" else{
            return
        }
        let searchURL = "https://serpapi.com/search.json?engine=google&q=Green+alternatives+for+\(searchQuery)&api_key=\(accessKey)"
        print(searchURL)
        
        if let urlString = searchURL.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed), let url = URL(string: urlString){
            let task = URLSession.shared.dataTask(with: url){
                data,_,_ in
                
                DispatchQueue.main.async {
                    let jsonDecoder = JSONDecoder()
                    if let validData = data, let result = try? jsonDecoder.decode(SearchAPIResults.self, from: validData){
                        if result.organic_results.count > 0 {
                            self.firstSearchResult = result.organic_results[0].link
                            print(result.organic_results[0].link)
                            self.secondSearchResult = result.organic_results[1].link
                            print(result.organic_results[1].link)
                            self.thirdSearchResult = result.organic_results[2].link
                            self.fourthSearchResult = result.organic_results[3].link
                            self.fifthSearchResult = result.organic_results[4].link
                        }else{
                            self.firstSearchResult = "No results found."
                        }
                    }else{
                        self.firstSearchResult = "No results found."
                    }
                }
            }
            task.resume()
        }
    }
    
}
