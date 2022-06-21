//
//  Env OBj==bj.swift
//  CarbonFoodPrint
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI

class EnvironmentObjView: ObservableObject{
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append("Search Result 1")
        self.dataArray.append("Search Result 2")
        self.dataArray.append("Search Result 3")
        self.dataArray.append("Search Result 4")
        self.dataArray.append("Search Result 5")
    }
}


struct EnvObj: View {
    
    @StateObject var Model: EnvironmentObjView = EnvironmentObjView()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(Model.dataArray,id:\.self){
                    result in NavigationLink(destination: NavMenu(), label: {
                        Text(result)
                    })
                }
            }
            .navigationTitle("Search Result")
        }
    }
}

struct Env_OBj__bj_Previews: PreviewProvider {
    static var previews: some View {
        EnvObj()
    }
}
