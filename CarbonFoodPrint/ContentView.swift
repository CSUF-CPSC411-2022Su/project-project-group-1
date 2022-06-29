//
//  ContentView.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    //@StateObject var volunteer = Volunteer(name: "", age: 0)
    @State var TheVar: String = "*This is the string variable passed from the first page*"
    //@State var TheList = ["Banana": 234, "Apple": 347, "Orange": 21 ]
    @State var TheList: String = "Info goes here"
    //@State var age: String = ""
    //@State var message: String = ""
   // @State var TheChoice: Int = 0
    var body: some View {
        //Text("Hello, world!")
            //.padding()
        
        
        HStack {
            //Text("TEST")
                //.modifier(ContentText())
            
            Button(action: {
            print("Was clicked")
            }) {
            Text("MENU")
            }.padding().modifier(ContentText())  //.border(Color.black)
            
        }
        TabView {
            ARView()
                .tabItem {
                    Image(systemName: "camera")
                    Text("AR MODE")
                }
            BarView(TheVar: $TheVar, TheList: $TheList)
                .tabItem {
                    Image(systemName: "scanner")
                    Text("BARCODE SCAN")
                }
            //CrossWalkInfo()
              //  .tabItem {
                //    Image(systemName: "info")
                  //  Text("Crosswalk Info")
                //}
            //AddCrossWalk()
              //  .tabItem {
                //    Image(systemName: "plus")
                  //  Text("Add Crosswalk")
               // }
        }//.environmentObject(manager)
        
        /*
        NavigationView {
        VStack {
            Button(action: {
                print("Was clicked")
            }) {
                Text("SCAN MODE").bold()
            }.padding().modifier(ContentText())   //.border(Color.black)
            Button(action: {
                print("Was clicked")
            }) {
                Text("AR MODE")
            }.padding().modifier(ContentText())   //.border(Color.black)
            
            NavigationLink(destination: VolunteerDetails(TheVar: $TheVar)) {
                                    Text("See Notices")
                                         .font(.caption)
                            }//.padding(.bottom, 30)
        }
    }
         */
    }
        
}



struct Information: View {
    @Binding var TheVar: String
    var body: some View {
        Text(TheVar).bold().padding()
    }
}

struct ListInfo: View {
    @Binding var TheList: String
    var body: some View {
        Text(TheList).bold().padding()
    }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 30))
           .foregroundColor(Color.white)
           .padding()
                      .background(Color.black)
                      .cornerRadius(10)
               }
           }

struct VolunteerDetails: View {
    @Binding var TheVar: String
    var body: some View {
        VStack {
            Text("This scanner is still being implemented.")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("Notice Page.")
                
                Spacer()
            }
            HStack {
                //Spacer()
                //Text(TheVar).bold().padding() //.frame(width: 100) //.padding(.bottom, 10)
                Information(TheVar: $TheVar).padding()
                //Text("Ages 18 - 50:")
                //Text("6 hours").bold()
            }

            HStack {
                //Text("Ages 51 - 60:")
                //Text("3 hours").bold()
            }//.padding(.bottom, 30)
            HStack {
                //Text("*People below 13 and over 60 are not eligible to volunteer.")
                    //.font(.caption)
            }
            Spacer()
        }
    }
}

struct ListViewer: View {
    @Binding var TheList: String
    //@State var TheChoice: Int
    var body: some View {
        VStack {
            Text("Information for Items")
                .font(.headline)
                .padding(.bottom, 30)
            HStack {
                Text("Banana:")
                
                Spacer()
            }
            HStack {
                //Spacer()
                //Text(TheVar).bold().padding() //.frame(width: 100) //.padding(.bottom, 10)
                //ListInfo(TheList: $TheList).padding()
                Text(TheList)
                //Text("Ages 18 - 50:")
                //Text("6 hours").bold()
            }

            HStack {
                //Text("Ages 51 - 60:")
                //Text("3 hours").bold()
            }//.padding(.bottom, 30)
            HStack {
                //Text("*People below 13 and over 60 are not eligible to volunteer.")
                    //.font(.caption)
            }
            Spacer()
        }
    }
}



struct ItemView: Identifiable {
    /// The Identifiable protocol requires an id property that should be a unique value
    /// UUID generates a unique random hexadecimal string
    var id = UUID()
    var productName: String
    var description: String
}




