//
//  Persistence.swift
//  CrosswalkSearch
//
// Lab exercise 6
// Randy Nguyen
// CPSC 411-02 Summer2022
// June 24, 2022
//
//  Created by Paul Inventado on 4/11/22.
//

import Foundation
import SwiftUI

class SearchHistory: ObservableObject {
    @Published var searchStrings: [String] = []
    var maxsearches: Int = 5
    var fileURL: URL

    init() {
        // TODO: Create a path to a file named crosswalks.plist and store in fileURL
        let documentsDirectory =
            FileManager.default.urls(for: .documentDirectory,
            in: .userDomainMask).first!
        let archiveURL =
            documentsDirectory.appendingPathComponent("GreenMaps")
            .appendingPathExtension("plist")
        fileURL = archiveURL

//        loadHistory()
    }

    func addSearchString(_ searchString: String) {
        if searchStrings.count == maxsearches {
            searchStrings.remove(at: maxsearches - 1)
        }
        searchStrings.insert(searchString, at: 0)
//        saveHistory()
    }

//    func saveHistory() {
//        // TODO: Save the searchStrings array into a file
//        let propertyListEncoder = PropertyListEncoder()
//        if let encodedString = try? propertyListEncoder.encode(searchStrings) {
//            try? encodedString.write(to: fileURL, options: .noFileProtection)
//        }
//    }
//
//    func loadHistory() {
//        // TODO: Load data from the file and store it in searchStrings
//        let propertyListDecoder = PropertyListDecoder()
//        if let retrievedString = try? Data(contentsOf: fileURL),
//           let decodedString = try? propertyListDecoder.decode(searchStrings, from: retrievedString) {
//            searchStrings = decodedString
//        }
//    }
}
