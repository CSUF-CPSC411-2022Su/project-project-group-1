//
//  DailyWeeklyReport.swift
//  CarbonFoodPrint
//
//  Created by Britney on 6/14/22.
//

import Foundation
import SwiftUI

// I want the daily report to be a scroll page
struct WeeklyReport: View {
    var body: some View {
            VStack {
                Text("Daily/Weekly Report").padding()
        }
    }
}

// Daily Report for Users
struct DailyReport: View {
    @State var foods: String = ""
    // consider doing a list for foods so the user can choose instead of having to type
    // the foods out (more user friendly)
    @State var milesDriven: String = ""
    // convert to Int unless you want to do list so the user can choose ?
    // or maybe Str would work best because the user might have taken the bus and not
    // know how many miles they drove
    @State var transportation: String = ""
    // allow user to type

    
    var body: some View {
        Text("Daily and Weekly Report").padding() //move this to the top
        VStack{
            HStack{
                Text("What did you eat today?")
                TextField("Choose from the list below: ", text: $foods) //make these centered
            }
            HStack{
                Text("How many miles did you drive today? ")
                TextField("Miles: ", text: $milesDriven)
            }
            HStack{
                Text("What was your source of transportation today? ")
                TextField("Source of transportation: ", text: $transportation)
            }
        }
    }
}
