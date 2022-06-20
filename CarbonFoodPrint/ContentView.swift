//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var breakfast: String = ""
    @State var lunch: String = ""
    @State var dinner: String = ""
    @State var transportation: String = ""
    @State var milesDriven: String = ""
    
    var body: some View
    {
        VStack
        {
            Text("Daily Questions")
                .font(.headline)
//                .font(.custom("Courier New", size: 20))
//                .padding()
            HStack
            {
                Spacer()
                Text("What did you eat for breakfast? ")
                TextField("", text: $breakfast)
            }
            HStack
            {
                Spacer()
                Text("What did you eat for lunch? ")
                TextField("", text: $lunch)
            }
            HStack
            {
                Spacer()
                Text("What did you eat for dinner? ")
                TextField("", text: $dinner)
            }
//            NavigationLink(destination: MealCategory()) {
//                Text("Click here to fill out Breakfast, Lunch, and Dinner!")
//            }
            HStack
            {
                Spacer()
                Text("What was your source of transporation? ")
                TextField("", text: $transportation)
                Spacer()
            }
        }
        Spacer()
        VStack
        {
            Text(breakfast)
            Text(lunch)
            Text(dinner)
            Text(transportation)
        }
    }
}
        
        
        
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
