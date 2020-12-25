//
//  SecondView.swift
//  ObservableDemo
//
//  Created by 이경수 on 2020/12/25.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View!")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(TimerData())
    }
}
