//
//  DailyWeeklyReport.swift
//  CarbonFoodPrint
//
//  Created by Britney on 6/14/22.
//

import Foundation
import SwiftUI

// 6.2 miles produces 1.97 kg CO2
// REFERENCE: https://www.co2everything.com/co2e-of/toyota-corolla-2020

class totalCO2
{
    var carType: String
    var CO2 : Double
    var milesDriven: Double
    
    // initializer
    init(carType: String, CO2: Double, milesDriven: Double)
    {
        self.carType = carType
        self.CO2 = CO2
        self.milesDriven = milesDriven
    }
    
    func carDrivenDaily()
    {
        // assumming the user only uses these four cars
        
        // maybe a dictionary would be better ["toyota corolla": 4.34] <- use the value, multiply value * milesDriven
        // you should get total CO2 for the day
        if carType.contains("Toyota Corolla")
        {
            // for every 6.2 miles driven, 4.34 lbs of co2 is produced
            return CO2 = 4.34
        }
        if carType.contains("Tesla Model Y")
        {
            return CO2 = 1.92
        }
        if carType.contains("Nissan Leaf")
        {
            return CO2 = 2.18
        }
        if carType.contains("BMW X5")
        {
            return CO2 = 8.20
        }
    }
    
//    func totalC02(milesDriven: Double) -> Double
//    {
//        let received_C02: function
//        received_C02 = carDrivenDaily
//        return milesDriven * received_C02
//        
//    }
}
    


//
//// I want the daily report to be a scroll page
//struct WeeklyReport: View {
//    var body: some View {
//            VStack {
//                Text("Daily Questions")
//        }
//    }
//}
//
//// Daily Report for Users
//struct DailyReport: View {
//    @State var eatToday: String = ""
//    // consider doing a list for foods so the user can choose instead of having to type
//    // the foods out (more user friendly)
//    @State var milesDriven: String = ""
//    // convert to Int unless you want to do list so the user can choose ?
//    // or maybe Str would work best because the user might have taken the bus and not
//    // know how many miles they drove
//    @State var transportation: String = ""
//    // allow user to type
//
//
//    var body: some View {
//        Text("Daily Questions").padding() //move this to the top
//
//
//        VStack
//        {
//            Text("Daily Questions")
//                .font(.headline)
//                .font(.custom("Courier New", size: 20))
//                .padding()
//            HStack
//            {
//                Spacer()
//                Text("What did you eat today? ")
//                TextField("", text: $eatToday)
//            }
//            HStack
//            {
//                Spacer()
//                Text("What was your source of transporation? ")
//                TextField("", text: $transportation)
//                Spacer()
//            }
//        }
//        Spacer()
//        VStack
//        {
//            Text(eatToday)
//            Text(transportation)
//        }.background(Color.green)
//        TabView
//        {
//            //since i want to do tab view, make sure each
//            //question can be seen with each swipe
//            Text("First Question")
//            Text("This can be second ?")
//            Text("Third Question")
//        }
//        Text("Hello from Weekly!!").padding()
//        .tabViewStyle(.page)
//        .indexViewStyle(.page(backgroundDisplayMode: .always))
//        DailyReport()
//    }
//}
        
        
        
        
        
//        VStack{
//            HStack{
//                Text("What did you eat today?")
//                TextField("Choose from the list below: ", text: $foods) //make these centered
//            }
//            HStack{
//                Text("How many miles did you drive today? ")
//                TextField("Miles: ", text: $milesDriven)
//            }
//            HStack{
//                Text("What was your source of transportation today? ")
//                TextField("Source of transportation: ", text: $transportation)
//            }
//        }
//    }
//}
