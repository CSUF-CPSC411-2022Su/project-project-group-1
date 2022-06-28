//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
//    @State var breakfast: String = ""
//    @State var lunch: String = ""
//    @State var dinner: String = ""
//    @State var transportation: String = ""
//    @State var milesDriven: String = ""
    
    @AppStorage ("amtOfPeople") var amtOfPeople: String = ""
    @AppStorage ("animalProducts") var animalProducts: String = ""
    @AppStorage ("carpoolToday") var carpoolToday: String = ""
    @AppStorage ("usedPublicTransporation") var usedPublicTransporation: String = ""
    @StateObject var carUsed = totalCO2()
    
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
                // this should be @AppStorage so it doesn't change
                Text("How many people do you live with? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $amtOfPeople)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
            }
            HStack
            {
                Spacer()
                Text("Did you consume animal-based products today? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $animalProducts)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
            }
            HStack
            {
                Spacer()
                Text("Did you carpool today? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $carpoolToday)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
            }
            HStack
            {
                Spacer()
                Text("Did you use public transportation today? ")
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("", text: $usedPublicTransporation)
                    .foregroundColor(.black)
                    .font(.custom("Menlo", size: 16))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
                Spacer()
            }
        }.background(Color.blue)
        Spacer()
        VStack
        {
            Text(amtOfPeople)
            Text(animalProducts)
            Text(carpoolToday)
            Text(usedPublicTransporation)
        }
//        TabView{
//            carUsed.carDrivenDaily()
//            .tabItem {
//                Image(systemName: "car")
        //text("Daily Report

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


//struct ContentView: View {
//    @StateObject var manager = CrosswalkManager()
//    // ^ the class will be seen everywhere/views
//    var body: some View {
//        // TODO: Model 4 - Replace VStack with TabView
//        TabView {
//            EditableCrosswalkList()
//                .tabItem {
//                    Image(systemName: "car")
//                    Text("Crosswalks")
//                }
//            CrossWalkInfo()
//                .tabItem {
//                    Image(systemName: "info")
//                    Text("Crosswalk Info")
//                }
//            // TODO: Model 4 - Add AddCrossWalk as a TabView
//            AddCrossWalk()
//                .tabItem {
//                    Image(systemName: "plus")
//                    Text("Add CrossWalk")
//                }
//        }.environmentObject(manager)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
