//
//  GreenMaps.swift
//  CarbonFoodPrint
//
//  Created by Nguyen, Randy on 6/27/22.
//

import Foundation

class CurrentLocation: ObservableObject {
    @Published var country: String
    @Published var state: String
    @Published var city: String
    @Published var zipCode: String
    @Published var withinRange: Int
    
    var validPrint: String {
        var list: String = ""
        if !country.isEmpty, !state.isEmpty, !city.isEmpty, !zipCode.isEmpty {
            list = country + " " + state + " " + city + " " + zipCode + " " + String(withinRange)
                + "\n is a valid location"
        } else {
            list = "Invalid Location"
        }
        return list
    }
    
    init(country: String, state: String, city: String, zipCode: String, withinRange: Int) {
        self.country = country
        self.state = state
        self.city = city
        self.zipCode = zipCode
        self.withinRange = withinRange
    }
    
    init() {
        self.country = ""
        self.state = ""
        self.city = ""
        self.zipCode = ""
        self.withinRange = 0
    }
}
