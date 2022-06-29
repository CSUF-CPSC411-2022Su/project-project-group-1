//
//  ProductInfoDisplays.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/28/22.
//

import Foundation
import SwiftUI


struct BananaViewer: View {
    //@Binding var TheList: String
    var body: some View {
        VStack {
            Text("Information for Banana")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("The common banana produces 114.08 million metric tons of waste due to waste-loss.")
                
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

class ProductManager: ObservableObject {
    @Published var products: [Product] = []
    
    init() {
        // Add initial crosswalks for testing
        products.append(Product(name: "Apple", description: "800 N State College Blvd., Fullerton CA 92831"))
        products.append(Product(name: "Banana", description: "Gymnasium Campus Dr. Fullerton, CA 92831"))
        products.append(Product(name: "Orange", description: "Campus Dr. Fullerton, CA 92831"))
        
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
