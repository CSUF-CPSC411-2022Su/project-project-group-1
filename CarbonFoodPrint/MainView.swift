//
//  MainView.swift
//  CarbonFoodPrint
//
//  Created by Britney  on 6/27/22.
//

import Foundation
import SwiftUI

struct MainView: View {
    @StateObject var dailyInfo = totalCO2()
    @StateObject var displayCars = CarsDisplay()
//    @StateObject var carsOnly = OnlyCars()
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "info")
                    Text("Daily Inquires")
//                    Label("Daily Inquiries", systemImage: "info")
                }
            DailyReport()
                .tabItem {
                    Label("Daily Results", systemImage: "list.dash")
                }
        }.environmentObject(dailyInfo)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
