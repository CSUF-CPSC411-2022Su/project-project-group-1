//
//  DailyReportViews.swift
//  CarbonFoodPrint
//
//  Created by Britney  on 6/27/22.
//

import Foundation
import SwiftUI

struct DailyReport: View {
    let userData = ContentView()
    let listCars = totalCO2()
    let displayCars = CarsDisplay()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Daily Results")
                        .font(.custom("Palatino", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding())
                    {
                        NavigationLink(destination: Text("You live with \(userData.amtOfPeople) people")
                            .background(Color.cyan)) {
                            Text("How many people do you live with? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                        NavigationLink(destination: Text("Consumed Animal-based Products Today: \(userData.animalProducts)")) {
                            Text("Did you consume animal-based products today? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                        NavigationLink(destination: Text("Carpool Today: \(userData.carpoolToday)")) {
                            Text("Did you carpool today? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                        NavigationLink(destination: Text("Public Transporation Used Today: \(userData.usedPublicTransporation)")) {
                            Text("Did you use public transportation today? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
//                        List{
//                            ForEach(displayCars.carTypes) {
//                                cars in
//                                VStack(alignment: .leading) {
//                                    Text("What type of car did you use? (Look at choices below)")
//                                }
//                            }
//                        }
//                        NavigationLink(destination: Cars()) {
//                            Text("See Car Details")
//                                .font(.custom("Palatino", size: 20))
//                                .fontWeight(.bold)
//                                .foregroundColor(.black)
//                                .padding()
//                        }
//                        NavigationLink(destination: Text("Car Used Today: \(userData.carUsedToday)")) {
//                            Text("What type of car did you use? Pick from the list shown below ")
//                                .font(.custom("Palatino", size: 20))
//                                .fontWeight(.bold)
//                                .foregroundColor(.black)
//                                .padding()
//                        }
                    }.background(Color.blue)
                }
            }
        }
    }
}


struct CarDetails: View {
    @EnvironmentObject var car: totalCO2
    var body: some View {
            VStack {
                Text("Cars Avaliable")
                    .font(.headline)
                    .padding(.bottom, 20)
                HStack{
                    Text("First Car: \(car.carTypes[0])")
                }
                
//                List {
//                    Section(header: Text("Crosswalk")) {
//                        NavigationLink(destination: Text("Name of the crosswalk")) {
//                            Text("Crosswalk name")
//                        }
//                        NavigationLink(destination: Text("Address of the crosswalk")) {
//                            Text("Crosswalk address")
//                        }
//                    }
//                    Section(header: Text("Volunteer")) {
//                        NavigationLink(destination: Text("Name of the volunteer")) {
//                            Text("Volunteer")
//                        }
//                        DisclosureGroup(content: {
//                            NavigationLink(destination: Text("Minors can only volunteer for 1 hour and accompanied by an adult.")) {
//                                Text("Minors")
//                            }
//                            NavigationLink(destination: Text("Adults can volunteer for a maximum of 3 hours.")) {
//                                Text("Adults")
//                            }
//                            NavigationLink(destination: Text("Seniors can volunteer for a maximum of 2 hours.")) {
//                                Text("Seniors")
//                            }
//                        }) {
//                            Text("Maximum hours")
//                        }
//                    }
//                }
//                Spacer()
            }
        }
}



//EditButton()
//       List {
//           ForEach(manager.crosswalks) {
//               crosswalk in
//               VStack (alignment: .leading) {
//                   Text(crosswalk.name)
//                       .font(.largeTitle)
//                   Text(crosswalk.description)
//                       .font(.caption)
//               }
