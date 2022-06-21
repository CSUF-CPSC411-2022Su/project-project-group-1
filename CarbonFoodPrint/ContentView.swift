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
    @EnvironmentObject var carUsed: totalCO2
    
    var body: some View
    {
        VStack
        {
            HStack{
                Text("Daily Questions")
                    .font(.custom("Palatino", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
            }
            HStack
            {
                Spacer()
                Text("What did you eat for breakfast? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $breakfast)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
            }
            HStack
            {
                Spacer()
                Text("What did you eat for lunch? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $lunch)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
            }
            HStack
            {
                Spacer()
                Text("What did you eat for dinner? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $dinner)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
            }
//            NavigationLink(destination: MealCategory()) {
//                Text("Click here to fill out Breakfast, Lunch, and Dinner!")
//            }
            HStack
            {
                Spacer()
                Text("What was your source of transporation? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $transportation)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                Spacer()
            }
        }.background(Color.blue)
        Spacer()
        VStack
        {
            Text(breakfast)
            Text(lunch)
            Text(dinner)
            Text(transportation)
        }
//        TabView{
//            carUsed.carDrivenDaily()
//            .tabItem {
//                Image(systemName: "car")
//                Text("Crosswalks")
//            }
//        }.environmentObject(carUsed)
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
