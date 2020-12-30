//
//  CarStore.swift
//  ListNavDemo
//
//  Created by 이경수 on 2020/12/29.
//

import SwiftUI
import Combine

class CarStore : ObservableObject{
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
