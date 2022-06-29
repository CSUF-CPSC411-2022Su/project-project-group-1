//
//  ProductInfoDisplays.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/28/22.
//

import Foundation
import SwiftUI


struct BananaViewer: View {
    //@Binding var TheBunch: Int
    //@Binding var TheList: String
    @EnvironmentObject var man: ProductManager
    var body: some View {
        VStack {
            
            Text("Information for Banana")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common banana produces 114.08 million metric tons of waste due to waste-loss.")
                /*
                ForEach(man.products) {
                    product in
                    VStack (alignment: .leading) {
                        Text(product.name)
                            .font(.largeTitle)
                        Text(product.description)
                            .font(.caption)
                    }
                }
                 */
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct AppleViewer: View {
    //@Binding var TheList: String
    var body: some View {
        VStack {
            Text("Information for Apple")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common apple produces 114.08 million metric tons of waste due to waste-loss.")
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct OrangeViewer: View {
    //@Binding var TheList: String
    var body: some View {
        VStack {
            Text("Information for Orange")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common Orange produces 114.08 million metric tons of waste due to waste-loss.")
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct TotalListViewer: View {
    //@Binding var TheList: String
    @EnvironmentObject var man: ProductManager
    //@State var TheChoice: Int
    var body: some View {
        VStack {
            Text("Information for Items")
                .font(.headline)
                .padding(.bottom, 30)
            
            HStack {
                List {
                ForEach(man.products) {
                    product in
                    VStack (alignment: .leading) {
                        Text(product.name)
                            .font(.largeTitle)
                        Text(product.description)
                            .font(.caption)
                    }
                }
                }
            }
            Spacer()
        }
    }
}

class ProductManager: ObservableObject {
    @Published var products: [Product] = []
    
    init() {
        // Add initial crosswalks for testing
        products.append(Product(name: "Apple", description: "Produces a certain amount of waste."))
        products.append(Product(name: "Banana", description: "Produces a certain amount of waste."))
        products.append(Product(name: "Orange", description: "Produces a certain amount of waste."))
        
        //crosswalks.append(CrossWalk(name: "McCarthy Hall", description: "The Only Campus Dr. Fullerton, CA 92831"))
    }
}

struct Product: Identifiable {
    /// The Identifiable protocol requires an id property that should be a unique value
    /// UUID generates a unique random hexadecimal string
    var id = UUID()
    var name: String
    var description: String
}
