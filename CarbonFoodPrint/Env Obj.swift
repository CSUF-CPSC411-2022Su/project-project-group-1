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
                    result in NavigationLink(destination: NavScreen(selectedresult: result), label: {
                        Text(result)
                    })
                }
            }
            .navigationTitle("Search Result")
        }
    }
}


struct NavScreen:View{
    
    let selectedresult: String
    
    var body: some View{
        ZStack{
            Color.white.ignoresSafeArea()
            Text(selectedresult)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)
                .cornerRadius(30)
                .background(Color.black)
        }
    }
}


struct EnvObj_Preview: PreviewProvider {
    static var previews: some View {
        EnvObj()
    }
}
