//
//  CarbonFoodPrintApp.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

@main
struct CarbonFoodPrintApp: App {
    @StateObject var daily = totalCO2()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(daily)
        }
    }
}
