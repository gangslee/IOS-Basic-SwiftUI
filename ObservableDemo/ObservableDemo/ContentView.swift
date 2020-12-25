//
//  ContentView.swift
//  ObservableDemo
//
//  Created by 이경수 on 2020/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Button(action: resetCount){
                    Text("Reset Counter")
                }
                NavigationLink(destination:SecondView()){
                    Text("Next Screen")
                }
                .padding()
            }
        }
    }
    
    func resetCount(){
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())
    }
}
