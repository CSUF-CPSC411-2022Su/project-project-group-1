//
//  DailyReportViews.swift
//  CarbonFoodPrint
//
//  Created by Mario  on 6/27/22.
//

import Foundation
import SwiftUI

struct DailyReport: View {
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
                        NavigationLink(destination: Text("amtOfPeople")) {
                            Text("How many people do you live with? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                        NavigationLink(destination: Text("Did you consume animal-based products today? ")) {
                            Text("How often do you consume animal-based products? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                        NavigationLink(destination: Text("Did you carpool today? ")) {
                            Text("Did you carpool today? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                        NavigationLink(destination: Text("Did you use public transportation today? ")) {
                            Text("Did you use public transportation today? ")
                                .font(.custom("Palatino", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

